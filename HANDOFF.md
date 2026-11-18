## Full-demo acceptance gate (2026-09-25)

Latest work: source demo now has measured runtime invocation coverage, 94/94 declared
nonprivate methods and constructors reached. `tools/verify.py` additionally checks exact-owner
resolution, wrapper reuse/naming and nested-class migration with target-only compilation.
`tools/verify_full.py` tests the actual entire source-demo. **FAIL**, 5/122 method callsites
migrated, 117 skipped; compile-target fails. See FULL_VERIFICATION.json and .verify/full/.
Do not report the full migration as complete. Most actions still have no target counterpart.
Migrator now accepts optional classpath (JARs), uses exact method owner/parameter signatures
when present; old calls without classpath retain legacy matching. Explicit receivers are
safely skipped. Constructors/types/fields not yet migrated. TraceSolver fast-rejects actions
absent from all candidates. Wrapper names avoid collisions and nested calls aren't rewritten
twice. Legacy source-relocation mode remains but does not fulfill migration to another library.

> **Актуализация 2026-09-24:** задача уточнена: нужны LibSL-спецификации двух библиотек и покрывающий Java-код,
> а не копирование реализации. Новый корпус — `SpecCorpus/json-simple-to-json-smart/README.md`:
> json-simple 1.1.1 (94 операции), json-smart 2.6.0 (123 операции), реальные проверки LibSL/SSA,
> coverage по байткоду и SMT-миграция escape. Исправлена коллизия имён перегрузок в `PreBuilder.kt`.
> Предыдущий режим `json-simple-full` ниже — отдельный эксперимент копирования исходников;
> он **не решает уточнённую исследовательскую задачу**. Границы полного переноса описаны в новом README.

> **Обновление 2026-09-21:** добавлен `json-simple-full` — полный перенос API 1.1.1 через
> самостоятельный слой совместимости с исходной реализацией под новым пакетом. Это отдельный
> режим, не SMT-синтез и не замена на Gson. Все 12 типов и сигнатуры проверены; результаты
> компиляции и дифференциальных тестов — `research/json-simple/VERIFICATION.json`.
> Инструкция и границы поддержки — `research/json-simple/README.md`.
> Описание старых `json-simple`/`json-simple-parser` ниже — историческое: их приближённые
> спецификации не обеспечивают полную совместимость. Для полного переноса используйте новый режим.

# LibraryMigrationTool — статус проекта (снимок на 2026-09-18)

Этот файл — самодостаточная сводка для продолжения работы (в т.ч. другим code-assistant'ом, не только
Claude). Инструмент: миграция вызовов Java-библиотек на основе LibSL-спецификаций (LSL) и SMT (Z3 через
ksmt). Статья по этому материалу — «Перцев» в общем плане диссертации, см. раздел «Диссертация» внизу.

## Быстрый старт

```bash
cd LibraryMigrationTool
./gradlew run                              # прогнать ВСЕ кейсы
./gradlew run --args="json-simple"         # прогнать один кейс по имени
```
Список кейсов — `src/main/kotlin/Main.kt`, `val CASES = listOf(...)`. Каждый кейс = пара
`(TestProjects/<Project>, TestSpecs/<source>.lsl, TestSpecs/<target>.lsl)`.

**Всегда проверять запуском, не чтением кода** — несколько раз в этой работе солвер говорил "SAT"
при фактически неверной миграции (см. находку №6 ниже), а генератор — молчал о поломанной
компиляции. Инспекция сгенерированного текста НЕ заменяет реальный `javac`+`java` прогон.

## Окружение / сборка

- В репозитории не было `gradlew` — добавлен (gradle-8.13, скопирован из `android-harmony-transpiler`,
  дистрибутив уже был в `~/.gradle/wrapper/dists`, качать не пришлось).
- В `build.gradle.kts` добавлен плагин `application` (`mainClass = porting.MainKt`) — иначе `./gradlew run`
  не существовал как задача.
- **ksmt-z3 не поддерживает Linux/ARM64 "из коробки"** (native-биндинги есть только для linux-x64/
  windows-x64/mac-x64/mac-arm). Обойдено добавлением своего загрузчика:
  - `src/main/kotlin/io/ksmt/solver/z3/KZ3NativeLibraryLoaderLinuxArm.kt` — класс в пакете `io.ksmt.solver.z3`
    (не модификация библиотеки — просто ещё один класс на classpath), 1:1 копия существующего
    `KZ3NativeLibraryLoaderLinuxX64`.
  - `src/main/resources/lib/linux/arm/z3/{libz3.so,libz3java.so}` — бинарники **Z3 4.15.3** (НЕ 4.12.5,
    который бандлит ksmt внутри себя — официальный релиз `z3-4.12.5-arm64-glibc-2.35.zip` на GitHub
    реально содержит x86-64 бинарники, баг апстрима, проверено `readelf -h`; 4.15.3 — честный AArch64).
    Z3 C API стабилен между версиями, риск несовместимости низкий.
  - На macOS ARM (mac-arm) и Linux x64 всё это не нужно — там ksmt поддерживает нативно из коробки.

## Полное покрытие исправленных багов инструмента (все проверены регрессией на всех кейсах)

Все — реальные, воспроизводимые баги генератора/солвера, найденные и исправленные в ЭТОЙ сессии:

1. **`Migrator.kt`**: раньше при первом непокрытом вызове `return` обрывал миграцию ВСЕГО файла (и
   даже остальных файлов проекта). Исправлено на `continue` + счётчики `MigrationStats`
   (migrated/skipped) — печатается `N/M calls migrated, K skipped`.
2. **`ParamCodingCtx.mkParamFormula()`** (`solver/param/`): не учитывала `.conditions` целевой трассы,
   только `.actions`/`.result` — параметр, используемый ТОЛЬКО внутри `if` цели, солвер считал
   "unused" и молча подставлял дефолт типа. Реальный эффект: `checkArgument(condition)` генерировал
   код, который бросал исключение ВСЕГДА, независимо от условия. Исправлено — теперь условия трассы
   тоже связываются уравнениями (как уже связывались действия).
3. **`Generator.generateCondition()`** (`gen/`): считал ветку "пустой для сворачивания" только по
   `traceCalls.isEmpty()`, не проверяя `result` — реальный эффект: `emptyToNull` терял `return null;`
   (не компилировалось). Исправлено через `isTrivial(node)`, учитывающий и `result`, и `next`.
4. **`Generator.generateTraceCall()`**: генерировал `functionName(args)` голым именем, рассчитывая на
   `import static X.*`. Java всегда резолвит `toString`/`hashCode`/`equals`/`getClass`/`clone`/`wait`/
   `notify` к унаследованному `Object`-методу ПЕРВЫМ, независимо от арности — компиляция падала.
   Исправлено — вызов теперь ВСЕГДА полностью квалифицирован именем автомата
   (`java.util.Arrays.toString(a)`), без расчёта на wildcard-импорт.
5. **`Migrator.kt`**: `Generator.generateHeader()` всегда добавляет `throws Exception` обёртке, но
   throws-клауза МЕТОДА, куда подставляется вызов, не обновлялась → unreported exception. Исправлено —
   `methodCall.findAncestor(MethodDeclaration::class.java)` + `addThrownException`.
6. **`JavaTypes.kt`**: `ListType`/`MapType` печатали `List<T>`/`Map<K,V>` голыми именами без импорта
   (`Migrator.kt` импортирует только автоматы из решения, не служебные `java.util.List/Map`).
   Исправлено — теперь всегда `java.util.List<T>`/`java.util.Map<K,V>`.

## Корпус кейсов (10 реальных + 2 файла чистой документации)

Прогонять: `./gradlew run` (без арг. — все). Актуальный результат на момент записи — все зелёные:

| Кейс | Результат | Пара библиотек |
|---|---|---|
| `math`, `file` | 1/1, 2/2 | игрушечные примеры (были в репо изначально) |
| `math-fastmath` | 6/6 | `java.lang.Math` ↔ Apache Commons Math3 `FastMath` |
| `junit4-junit5` | 4/4 | `org.junit.Assert` ↔ `org.junit.jupiter.api.Assertions` |
| `guava-lang3-strings` | 9/10 | Guava `Strings` (9/9 методов, ПОЛНОЕ покрытие класса) + `Preconditions.checkArgument` ↔ Lang3 `StringUtils`/`Validate`. `nullToEmpty→defaultString` — честный skip (см. лимит №2 ниже) |
| `guava-jdk9-collections` | 3/3 в инструменте | Guava `Lists`/`Sets`/`Maps` ↔ JDK 9+ `List.of`/`Set.of`/`Map.of`. **Set не компилируется по-настоящему** (см. лимит №4) |
| `arrayutils-arrays` | 1/1 | Lang3 `ArrayUtils.isEquals` ↔ JDK `Arrays.equals` (только это — `toString`/`hashCode` УБРАНЫ, см. находку №6) |
| `commons-io-std-files` | 1/1 | реальная decomposition `FileUtils.copyDirectory` (самый богатый пример, 6 уровней вложенности) |
| `json-simple` | 5/5, 0 facade | ВСЯ библиотека `json-simple` целиком (не один класс) — `parse`/`parseWithException`→Gson `JsonParser.parseString`, `toJSONString`/`escape`→org.json `JSONObject.valueToString`/`quote`, `writeJSONString`→композиция `valueToString`+commons-io `IOUtils.write` |
| `json-simple-parser` | 1/1 | `JSONParser.parse` — INSTANCE-вызов, мигрирован БЕЗ правок инструмента (см. лимит №5) |

Плюс **2 файла чистой документации, НЕ подключены ни к одному кейсу**:
- `TestSpecs/json-simple-instance-classes.lsl` — `ItemList`, `parser.ParseException`, `parser.Yylex`,
  `parser.Yytoken` (реально stateful классы — не мигрируемы этим инструментом, задокументировано прямо
  в комментариях файла).
- `TestSpecs/json-simple-interfaces.lsl` — `JSONAware`, `JSONStreamAware`, `parser.ContainerFactory`,
  `parser.ContentHandler` (чистые интерфейсы/колбэки — не call site в модели инструмента).

С этими двумя файлами — **все 12 классов `org.json.simple` формально описаны**, это единственная
библиотека в корпусе с полным покрытием на уровне классов, а не только методов.

## Известные, подтверждённые ограничения метода (для секции Limitations/Threats to Validity статьи)

1. **Матчинг только по голому имени метода** (`Migrator.kt`: `methodCall.name.asString()`, без учёта
   класса/receiver/arity). Реальная демонстрация: в json-simple `writeJSONString`/`toJSONString`/
   `escape` дублируются с одинаковым именем на разных классах — смоделированы один раз, не по разу на
   класс, иначе демонстрация была бы обманчивой.
2. **Branch-to-branch лимит солвера**: если И источник, И цель — однофункциональные обёртки,
   ветвящиеся на СВОЁМ не вынесенном отдельно action-вызове (не декомпозированы на плоские вызовы),
   `ParamCodingCtx.searchValue` не может протащить условие через границу вызова — честный skip, НЕ
   тихая ошибка (пример: `nullToEmpty`/`defaultString`).
3. **№6, САМАЯ ВАЖНАЯ находка**: `ArrayUtils.toString`/`hashCode` реально давали SAT (солвер сказал
   "мигрировано"), но **вывод был семантически неверным** — `{1,2,3}` vs `[1, 2, 3]`, разные хеши.
   Причина — Я ошибочно объявил обе функции как одно и то же действие в спеке. Солвер рассуждал
   корректно ОТНОСИТЕЛЬНО заданной (неверной) аксиомы. **Formal verification только так же надёжна,
   как аксиомы, которые в неё заложил человек** — это не баг реализации, это методологический потолок.
   Убрано из корпуса по решению пользователя, не facade и не подделка.
4. **Нет типа `Set` в LSL/JavaTypes.kt** (только `array`/`list`/`map`) — `Set`-возвращающие реальные
   методы (`Set.of`, `Sets.newHashSet`) получают несовместимый Java-тип в кодогене, реально не
   компилируются.
5. **Нет теории строк в SMT-слое вообще** — строки моделируются как uninterpreted sort
   (`SMTContext.kt: mkUninterpretedSort("string")`), нет конкатенации ни в `BinOps.kt`, ни в самой
   библиотеке `ksmt` (проверено декомпиляцией). `JSONObject.toString(key,value)` (реальная
   реализация — буквальная конкатенация строк) поэтому принципиально не проверяем и убран из корпуса.
6. **Instance-вызовы**: `Migrator.kt` никогда не читает `MethodCallExpr.scope` — ни при матчинге, ни
   при замене (receiver просто отбрасывается). Это случайно позволяет мигрировать **только** instance-
   методы с ДОКАЗУЕМО бесполезным receiver'ом (пример: `JSONParser.parse` — no-arg конструктор,
   поведение не зависит от истории вызовов). Полноценная поддержка instance-вызовов (constructor,
   идентичность объекта через SSA) НЕ реализована — отдельная большая задача. Применение этого же
   трюка к стейтфул-классам дало бы тихо неверный результат — намеренно не сделано для `ItemList` и
   `parser.Yylex`.

## Синтаксис LSL — грабли, на которые наступали

- `out` и `type` — зарезервированные слова, нельзя использовать как имена параметров.
- **Все `define action` должны быть сгруппированы в начале файла**, до любых `type`/`automaton` —
  перемешивание с автоматами даёт каскад непонятных "expecting 'fun'" ошибок парсера.
- Несколько `automaton` на один `.lsl`-файл — поддерживается (используется для многоклассовых
  библиотек типа Guava, где `Strings`+`Preconditions` в одном файле).
- Соответствие типов в кодогене (`gen/JavaTypes.kt`): `array<T>` → `T[]` (НЕ `List`/`Set`!), `list<T>`
  → `java.util.List<T>`, `map<K,V>` → `java.util.Map<K,V>`, `any` → `Object`.
- `type some.real.Class {}` объявляет тип, который потом можно использовать как тип параметра в
  любой функции — так смоделированы `java.io.File`, `java.io.Writer`, и "self"-параметр для
  документации instance-методов (`fun add(self: org.json.simple.ItemList, item: string)`).

## Дальше (не сделано, кандидаты на продолжение)

- Больше пар библиотек (breadth) — см. `[[project_pertsev_article_plan]]` в памяти Claude за детали
  обсуждавшихся кандидатов.
- Метрики для статьи: % успеха на функцию/на библиотеку, время SMT-решения, трудозатраты на LSL-строку.
- Полноценная поддержка instance-вызовов (см. лимит №6) — если решим, что это стоит отдельной статьи/
  главы, а не просто врезки в текущую.
- Тема диссертации: обсуждалась идея переименования в сторону «кроссплатформенности» — рекомендация:
  НЕ менять заголовок целиком, а сделать кроссплатформенный мобильный трек (Android→HarmonyOS, уже
  опубликовано; UI/Compose→ArkUI; навигация; Cangjie) флагманским мотивирующим кейсом, а работу с
  LibSL/SMT-миграцией библиотек (этот репозиторий) — доказательством общности метода ЗА пределами
  кроссплатформенности (межбиблиотечная, не межплатформенная миграция). Обсудить с Ицыксоном В.М.
  формулировку вида «Автоматизация портирования приложений на основе формальных спецификаций: от
  кроссплатформенной миграции UI до миграции библиотечных API» — не решать в одиночку.
