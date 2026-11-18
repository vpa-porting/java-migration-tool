# Тесты и покрытие в IntelliJ IDEA

## Первое открытие

1. Откройте **LibraryMigrationTool** как отдельный Gradle-проект: файл
   `settings.gradle.kts` или каталог с `build.gradle.kts`, а не родительский каталог статьи.
2. Дождитесь импорта Gradle. В **Settings → Build, Execution, Deployment → Build Tools →
   Gradle** выберите **Gradle JVM: JDK 21**, **Run tests using: Gradle**, дистрибутив —
   **Gradle Wrapper**. Сборка использует toolchain 17, тесты — 21; при первом запуске
   Gradle может скачать toolchain и зависимости. Для этого нужен доступ к репозиториям.
3. Нажмите **Reload All Gradle Projects** в окне Gradle.

Запуск через Gradle обеспечивает генерацию `corpus.properties`, правильный classpath,
тестовую JVM и стартовый instrumentation-agent Jazzer. Это важно для миграционных тестов,
которые сами компилируют исходный и сгенерированный Java-код.

## Обычные тесты

Выберите конфигурацию **All Tests** и обычную зелёную кнопку **Run**. Либо откройте
**Gradle → Tasks → verification → test** и запустите задачу двойным щелчком.
Отдельный класс/метод запускается зелёной стрелкой слева от теста при выбранном Gradle runner.

Для новых миграций есть конфигурация **Tests - hex loop migrations**:
`HexLoopsMigrationTest` проверяет мутацию массивов, исключения, форматирование,
локаль и PrintStream на реально сгенерированном коде. Обычный `test` запускает
`@FuzzTest` в regression-режиме, а не длительный coverage-guided fuzzing.

Отчёт JUnit: `build/reports/tests/test/index.html`. Его можно открыть браузером;
результаты тестов также отображаются в окне Run IDEA. Если Gradle пишет `UP-TO-DATE`,
он использовал кэш; для принудительного прогона выполните `./gradlew test --rerun-tasks`.

## Покрытие исходных библиотек, используемое в отчётах эксперимента

Запустите **Coverage - fresh fuzz run (3s each)** обычной кнопкой **Run**.
Это готовая Gradle-конфигурация с задачами `test fuzzTest fuzzBranchCoverage` и параметрами:

```text
-Pfuzz.duration=3s -Pbranch.kind=migrated -Pbranch.output=branch-coverage-migrated
```

Все fuzz-цели получают собственные JVM. В итоговый отчёт попадут только цели,
сравнивающие оригинал со сгенерированным кодом. Три секунды — короткая проверка запуска,
а не достаточный бюджет для нового большого эксперимента. В **Run → Edit Configurations**
можно заменить `3s` на `30s` или `5m`. Бюджет применяется к каждой цели отдельно;
добавляются время загрузки JVM, миграции и компиляции. Проценты могут отличаться при
других бюджетах, случайных seed и сохранённом corpus; короткий прогон не гарантирует
повторения максимального достигнутого покрытия.

После успешного завершения откройте:

* `build/branch-coverage-migrated/coverage.md` — строки/ветви по исходным файлам и полным jar;
* `methods.csv` рядом — счётчики по методам;
* `missed-branches.tsv` — строки с непокрытыми ветвями;
* `targets.csv` — состав целей и вид проверки;
* `inputs.tsv` — SHA-256 входных jar, снимков байткода, проб и JSON-отчётов.

Markdown можно читать прямо в редакторе/preview IDEA. Если каталог `build` скрыт как
исключённый, включите **Show Excluded Files** в настройках окна Project или откройте
файл через **File → Open** по полному пути. Оценивать нужно строку **Complete library**:
в знаменатель включены все классы jar, включая ни разу не вызванные.

Не выбирайте **Run with Coverage** для этой fuzz-конфигурации: измерение уже выполняет
Jazzer. Его модифицированная раскладка проб анализируется задачей `fuzzBranchCoverage`.
Файл `merged.exec` имеет формат JaCoCo, но его не следует интерпретировать обычным
анализатором IDE вместо нашего Jazzer-анализатора.

## Пересчитать сохранённые результаты

Если тест упал с `FileNotFoundException` и чужим путём вроде `/home/node/.gradle/...`
на macOS, в `build` сохранился `corpus.properties` с другой машины. После обновления
проекта Gradle пересоздаёт этот файл при каждом запуске тестов. Повторите запуск
через Gradle; вручную переносить JAR или создавать `/home/node` не требуется.

Конфигурация **Coverage - saved migrated probes** запускает только `fuzzBranchCoverage`
с теми же фильтром/каталогом, без повторного fuzzing. Сначала должен существовать полный
набор `.exec`, `.classes.jar` и JSON для выбранных целей. После `clean` их нужно получить заново.

Для отчёта, включающего также модели спецификаций, выполните Gradle-задачу без `branch.kind`:

```sh
./gradlew fuzzBranchCoverage
```

Он появится в `build/branch-coverage/coverage.md`. Метки `migrated` и `spec-conformance`
обязательно различаются: исполнение модели не является проверкой сгенерированного кода.

## То же из терминала IDEA

На macOS/Linux, из каталога LibraryMigrationTool:

```sh
./gradlew test
./gradlew test --tests porting.corpus.HexLoopsMigrationTest
./gradlew fuzzTest fuzzBranchCoverage -Pfuzz.duration=3s -Pbranch.kind=migrated -Pbranch.output=branch-coverage-migrated
```

На Windows замените `./gradlew` на `gradlew.bat` (в PowerShell — `./gradlew.bat`).
В ограниченном контейнере, где недоступен каталог Kotlin daemon, можно добавить
`-Pkotlin.compiler.execution.strategy=in-process`.

## Что означает кнопка IDEA Run with Coverage

Она подключает агент покрытия IDEA/обычного JaCoCo и показывает покрытие кода проекта.
Это полезно для самого `porting.*`, но не равно нашему замеру полного внешнего jar.
В измерение библиотеки выше входят вызовы подготовки входов, исключительные переходы
не считаются ветвями JaCoCo, а частично выполненная строка считается покрытой.
Ни 100% ветвей, ни успешный JUnit-запуск сами по себе не доказывают эквивалентность.
В старых fuzz-целях известные расхождения регистрируются в JSON; новые миграции циклов
проверяются в строгом режиме. При оценке результата смотрите также `divergences`.

Официальные инструкции: [выбор Gradle runner и запуск тестов](https://www.jetbrains.com/help/idea/work-with-tests-in-gradle.html),
[Gradle run configurations](https://www.jetbrains.com/help/idea/run-debug-gradle.html),
[покрытие кода в IDEA](https://www.jetbrains.com/help/idea/code-coverage.html).
