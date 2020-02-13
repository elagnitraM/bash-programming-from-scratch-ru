# Список терминов

## A

[**Argument**](http://linuxcommand.org/lc3_wss0120.php) (аргумент) — слово или строка, которые передаются в программу при её вызове из командного интерпретатора. Пример аргумента:
{line-numbers: false, format: Bash}
```
cat file.txt
```

[**Arithmetic Expansion**](https://www.gnu.org/software/bash/manual/html_node/Arithmetic-Expansion.html#Arithmetic-Expansion) (арифметическая подстановка) — вычисление арифметического выражения и подстановка его результата. Пример:
{line-numbers: false, format: Bash}
```
echo $((4+3))
```

## B

[**Bash**](https://en.wikipedia.org/wiki/Bash_(Unix_shell)) (Bourne again shell) — интерпретатор командной строки, разработанный Брайан Фокс. Он заменил интерпретатор Bourne shell в Linux-дистрибутивах и некоторых проприетарных Unix системах. Является POSIX-совместимым, но при этом имеет расширения не предусмотренные стандартом.

[**Boolean Expression**](https://en.wikipedia.org/wiki/Boolean_expression) ([логическое выражение](https://ru.wikipedia.org/wiki/Логическое_выражение)) — конструкция языка программирования, результат вычисления которой может быть одно из двух значений: "истина" или "ложь".

[**Bourne shell**](https://en.wikipedia.org/wiki/Bourne_shell) — интерпретатор командной строки, разработанный Стивеном Борном. Он заменил оригинальный [интерпретатор Кена Томпсона](https://en.wikipedia.org/wiki/Thompson_shell) в [Unix версии 7](https://en.wikipedia.org/wiki/Version_7_Unix). Все его функции соответствуют [POSIX-стандарту](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html). Однако, некоторых возможности, упомянутые в стандарте, отсутствуют.

[**Brace Expansion**](http://mywiki.wooledge.org/BraceExpansion) (подстановка фигурных скобок) — генерация слов из заданных частей. Является функцией Bash и отсутствует в стандарте POSIX. Следующие две команды эквивалентны:
{line-numbers: true, format: Bash}
```
cp test.{txt,md,log} Documents
cp test.txt test.md test.log Documents
```

[**Builtin Commands**](https://www.gnu.org/software/bash/manual/html_node/Shell-Builtin-Commands.html) (встроенные команды) — команды, которые исполняются самим интерпретатором и не требуют сторонних утилит. Например, команда `pwd`.

## C

**Command** (команда) — текст, введёный после приглашения командного интерпретатора. Представляет собой действие, которое интерпретатор выполняет с помощью встроенной команды или стороннего приложения. Команды также могут читаться из файла, который называется скриптом.

[**Command Substitution**](https://www.gnu.org/software/bash/manual/html_node/Command-Substitution.html#Command-Substitution) (подстановка команды) — подстановка вместо команды её вывода в stdout, полученного в результате исполнения. При этом команда исполняется в subshell. Пример:
{line-numbers: false, format: Bash}
```
echo "$(date)"
```

[**Conditional Statement**](https://en.wikipedia.org/wiki/Conditional_(computer_programming)) или Conditional Expression ([условный оператор](https://ru.wikipedia.org/wiki/Ветвление_(программирование))) — конструкция языка программирования, позволяющая выполнить определённый набор команд в зависимости от значения некоторого логического выражения.

## F

[**File Descriptor**](https://en.wikipedia.org/wiki/File_descriptor) ([файловый дескриптор](https://ru.wikipedia.org/wiki/Файловый_дескриптор) или дескриптор) — абстрактный указатель на файл или канал коммуникации (поток, конвейер или сетевой сокет). Дескрипторы являются частью POSIX-интерфейса и представляют собой целые неотрицательные числа.

[**Filename Expansion**](https://www.gnu.org/software/bash/manual/html_node/Filename-Expansion.html#Filename-Expansion) (подстановка имён файлов) — подстановка имён файлов вместо шаблонов, содержащих символы `?`, `*` и `[`. Пример:
{line-numbers: false, format: Bash}
```
rm -rf *
```

## G

[**Globbing**](https://mywiki.wooledge.org/glob?action=show&redirect=globbing) или glob — другое название для Filename Expansion.

## L

[**Logical Operator**](https://en.wikipedia.org/wiki/Logical_connective) ([логическая операция](https://ru.wikipedia.org/wiki/Логическая_операция)) — операция над логическими выражениями, которая комбинирует исходные выражения в одно более сложное. Результат вычисления операции зависит от значений исходных выражений.

**Linux Environment** (Linux-окружение) — другое название для POSIX-окружения.

## O

[**Option**](http://linuxcommand.org/lc3_wss0120.php) (опция) — тип аргумента в стандартизированной форме (начинается с `-` или `--`), который передаётся в программу командным интерпретатором. Используется для переключения режимов работы программы или перечисления аргументов в произвольном порядке. Несколько опций могут объединяться в группы. В следующем примере `-l`, `-a` и `-h` объединены:
{line-numbers: false, format: Bash}
```
ls -lah
```

## P

[**Parameter**](https://stackoverflow.com/a/36495940/6562278) — аргумент, который предоставляет информацию либо команде, либо одной из её опций. Например, путь начала поиска и имя искомого файла в команде `find`:
{line-numbers: false, format: Bash}
```
find ~/Documents -name README
```

[**Parameter Expansion**](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html#Shell-Parameter-Expansion) (подстановка параметра) — подстановка вместо имени параметра его значения. Примеры:
{line-numbers: false, format: Bash}
```
echo "$PATH"
echo "${var:-empty}"
```

[**Portable Operating System Interface**](https://ru.wikipedia.org/wiki/POSIX) или POSIX (переносимый интерфейс операционных систем) — набор стандартов, которые описывают интерфейсы взаимодействия прикладных программ с ОС, командный интерпретатор и интерфейсы утилит. Цель создания POSIX — обеспечить совместимость ОС семейства Unix и облегчить перенос прикладных программ между ними.

[**Positional Parameters**](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameters.html#Shell-Parameters) (позиционные параметры) — параметры, хранящие ключи и аргументы командной строки, которые были переданы Bash скрипту при вызове. Имеют строго определённый порядок, который соответствует порядку ключей и аргументов при вызове. Пример позиционного параметра:
{line-numbers: false, format: Bash}
```
cp "$1" ~
```

**POSIX Environment** (POSIX-окружение) — программная среда полностью или частично совместимая со стандартом POSIX. Полная совместимость обеспечивается ядром ОС, командной оболочкой и файловой системой. Для частичной совместимости может быть достаточно уровня абстракции наподобие [Cygwin](https://ru.wikipedia.org/wiki/Cygwin).

[**POSIX shell**](https://www.grymoire.com/Unix/Sh.html) — стандарт, описывающий минимально достаточный набор функций интерпретатора командной строки для POSIX систем. Если интерпретатор имеет все эти функции, он считается POSIX-совместимым. При этом стандарт никак не ограничивает дополнительные возможности и расширения. За основу стандарта была взята реализация ksh88 [Korn shell](https://en.wikipedia.org/wiki/KornShell). Этот интерпретатор появился позже, чем Bourne shell. Поэтому некоторые из функций, указанных в стандарте POSIX, отсутствуют в Bourne shell.

[**Process Substitution**](https://www.gnu.org/software/bash/manual/html_node/Process-Substitution.html#Process-Substitution) (подстановка процесса) — аналог подстановки команды. В отличие от неё исполнение происходит асинхронно, а ввод и вывод команды привязаны к файлу. Содержимое этих файлов Bash перенаправляет родительскому процессу. Пример:
{line-numbers: false, format: Bash}
```
diff <(sort file1.txt) <(sort file2.txt)
```

## Q

[**Quote Removal**](https://www.gnu.org/software/bash/manual/html_node/Quote-Removal.html#Quote-Removal) (удаление кавычек) — последняя из подстановок Bash. Заключается в удалении всех неэкранированных символов `\`, `'` и `"`, которые не были получены в результате одной из предыдущих подстановок.

## R

[**Redirection Operator**](https://www.gnu.org/software/bash/manual/html_node/Redirections.html#Redirections) (оператор перенаправления) — специальная конструкция языка Bash и Bourne shell, которая позволяет перенаправлять ввод и вывод встроенных команд, утилит и приложений. В качестве цели или источника перенаправления указываются файловые дексрипторы, которые могут быть привязаны к файлам или стандартным потокам. Пример перенаправления:
{line-numbers: false, format: Bash}
```
find / -path */doc/* -name README 1> result.txt
```

## S

[**Shell Parameter**](http://mywiki.wooledge.org/BashGuide/Parameters) (параметр оболочки) — именованная область памяти интерпретатора, которая используется для хранения и извлечения информации.

[**Shell Variable**](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html) (переменные интерпретатора) — переменные, которые устанавливаются интерпретатором. Они нужны для его корректной работы. Доступны пользователю для чтения и записи.

[**Special Parameters**](http://mywiki.wooledge.org/BashGuide/Parameters) (специальные параметры) — параметры, устанавливаемые интерпретатором для хранения и передачи своих внутренних состояний. Доступны только для чтения. Пример специального параметра:
{line-numbers: false, format: Bash}
```
echo "$?"
```

[**Standard Streams**](https://en.wikipedia.org/wiki/Standard_streams) ([стандартные потоки](https://ru.wikipedia.org/wiki/Стандартные_потоки)) — программные каналы коммуникации приложения с окружением, в котором оно запущено. Являются абстракциями физических каналов ввода с клавиатуры и вывода на экран монитора. Каждому каналу назначается дескриптор, по которому к нему можно обратиться.

## T

[**Tilde Expansion**](https://www.gnu.org/software/bash/manual/html_node/Tilde-Expansion.html#Tilde-Expansion) (подстановка тильды) — подстановка вместо символа тильда `~` домашнего каталога пользователя из переменной интерпретатора с именем `HOME`.

## U

[**Unix Environment**](https://ccrma.stanford.edu/guides/planetccrma/Unix.html) (Unix-окружение) — другое название для POSIX-окружения.

[**Utility**](https://en.wikipedia.org/wiki/Utility_software) (утилита) — вспомогательная узкоспециализированная программа, предназначенная для обслуживания крупных информационных систем, например ОС.

## V

[**Variable**](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameters.html#Shell-Parameters) (переменная) — параметр, указанный по имени. Переменные задаются пользователем или интерпретатором. Пример объявления переменной:
{line-numbers: false, format: Bash}
```
FILENAME="README.txt"
```

## W

[**Word Splitting**](https://www.gnu.org/software/bash/manual/html_node/Word-Splitting.html#Word-Splitting) (разделение слов) — механизм разделения строки аргументов на отдельные слова. В качестве разделителя используются символы, перечисленные в переменной `$IFS`. Аргументы, заключённые в кавычки не обрабатываются. Пример:
{line-numbers: false, format: Bash}
```
cp file1.txt file2.txt "my file.txt" ~
```