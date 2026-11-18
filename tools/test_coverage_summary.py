import tempfile
import unittest
from pathlib import Path
from coverage_summary import merge_reports

class CoverageSummaryTest(unittest.TestCase):
    def report(self, root, name, covered, total, missed):
        p = root/name
        p.write_text(f'Line coverage:\nA.java: {covered}/{total} (0%)\n\nMissed lines:\nA.java: {missed}')
        return p

    def test_union_counts_shared_lines_once(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            a = self.report(root,'a',2,4,[3,4])
            b = self.report(root,'b',2,4,[2,4])
            row = merge_reports([a,b])['A.java']
            self.assertEqual(row['covered'],3)
            self.assertEqual(row['missed_lines'],[4])

    def test_rejects_incompatible_denominators(self):
        with tempfile.TemporaryDirectory() as d:
            root = Path(d)
            a = self.report(root,'a',2,4,[3,4])
            b = self.report(root,'b',2,3,[3])
            with self.assertRaises(ValueError): merge_reports([a,b])

    def test_rejects_truncated_report(self):
        with tempfile.TemporaryDirectory() as d:
            p = Path(d)/'a'; p.write_text('Line coverage:\nA.java: 1/2 (50%)')
            with self.assertRaises(ValueError): merge_reports([p])

if __name__ == '__main__': unittest.main()
