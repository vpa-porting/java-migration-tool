#!/usr/bin/env python3
"""Merge Jazzer textual line reports, never average coverage percentages.

Reports must describe identical library bytecode. Legacy reports do not contain
class hashes: this condition must be checked by the caller.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re


def parse_report(path):
    text = path.read_text()
    try:
        lines = text.split('Line coverage:\n', 1)[1].split('\n\n', 1)[0]
        missed = text.split('Missed lines:\n', 1)[1]
    except IndexError as exc:
        raise ValueError(f'{path}: missing coverage sections') from exc
    rows = {}
    for name, covered, total in re.findall(r'^(.+): (\d+)/(\d+) \(', lines, re.M):
        matches = re.findall(r'^' + re.escape(name) + r': \[([^]]*)\]', missed, re.M)
        if len(matches) != 1 or name in rows:
            raise ValueError(f'{path}: missing/duplicate entry for {name}')
        numbers = [int(n.strip()) for n in matches[0].split(',') if n.strip()]
        covered, total = int(covered), int(total)
        if len(numbers) != len(set(numbers)) or total - covered != len(numbers):
            raise ValueError(f'{path}: inconsistent counters for {name}')
        rows[name] = (total, set(numbers))
    if not rows:
        raise ValueError(f'{path}: empty line coverage')
    return rows


def merge_reports(paths):
    merged = {}
    expected = None
    for path in paths:
        report = parse_report(path)
        if expected is None:
            expected = set(report)
        if set(report) != expected:
            raise ValueError(f'{path}: class inventory differs; cannot safely merge')
        for name, (total, missed) in report.items():
            if name not in merged:
                merged[name] = (total, missed.copy())
            elif merged[name][0] != total:
                raise ValueError(f'{path}: denominator changed for {name}')
            else:
                merged[name][1].intersection_update(missed)
    return {name: dict(covered=total-len(missed), total=total,
                       percent=100*(total-len(missed))/total if total else None,
                       missed_lines=sorted(missed))
            for name, (total, missed) in sorted(merged.items())}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('reports', type=Path)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--expected-targets', type=int)
    args = parser.parse_args()
    paths = sorted(args.reports.glob('*.coverage-report.txt'))
    if not paths:
        parser.error('no coverage reports')
    if args.expected_targets is not None and len(paths) != args.expected_targets:
        parser.error(f'expected {args.expected_targets} targets, found {len(paths)}')
    classes = merge_reports(paths)
    comparisons = divergences = 0
    for path in paths:
        target = path.name.removesuffix('.coverage-report.txt')
        data = json.loads((args.reports / (target+'.json')).read_text())
        if data['target'] != target:
            raise ValueError(f'{target}: JSON target mismatch')
        for counts in data['methods'].values():
            n, d = counts['calls'], counts['divergences']
            if not 0 <= d <= n:
                raise ValueError(f'{target}: invalid comparison counters')
            comparisons += n
            divergences += d
    result = dict(classes=classes, targets=len(paths), comparisons=comparisons,
                  divergences=divergences,
                  agreement_percent=100*(comparisons-divergences)/comparisons if comparisons else None,
                  limitation='Legacy reports have no bytecode/run identity; compatibility must be independently verified. Preparation calls are included.',
                  inputs=[dict(file=p.name, sha256=hashlib.sha256(p.read_bytes()).hexdigest()) for p in paths])
    args.output.mkdir(parents=True, exist_ok=True)
    (args.output/'coverage.json').write_text(json.dumps(result, indent=2)+'\n')
    md = ['# Aggregated line coverage', '', result['limitation'], '',
          '| Source file | Covered | Total | Percent | Missed lines |',
          '|---|---:|---:|---:|---|']
    for name, row in classes.items():
        pct = f"{row['percent']:.2f}%" if row['percent'] is not None else 'n/a'
        md.append(f"| {name} | {row['covered']} | {row['total']} | {pct} | {', '.join(map(str,row['missed_lines']))} |")
    md += ['', f'Targets: {len(paths)}. Comparisons: {comparisons}. Divergences: {divergences}.',
           '', 'Line coverage includes partially covered lines. Branch coverage cannot be merged from aggregate percentages.']
    (args.output/'coverage.md').write_text('\n'.join(md)+'\n')
    print(args.output/'coverage.md')


if __name__ == '__main__':
    main()
