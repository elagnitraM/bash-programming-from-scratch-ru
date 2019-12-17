# Ответы

## Общая информация

##### Упражнение 1-1. Перевод чисел из BIN в HEX

{line-numbers: false}
```
* 10100110100110 = 0010 1001 1010 0110 = 2 9 A 6 = 29A6
* 1011000111010100010011 = 0010 1100 0111 0101 0001 0011 = 2 C 7 5 1 3 = 2C7513
* 1111101110001001010100110000000110101101 = 1111 1011 1000 1001 0101 0011 0000 0001 1010 1101 = F B 8 9 5 3 0 1 A D = FB895301AD
```

##### Упражнение 1-2. Перевод чисел из HEX в BIN

{line-numbers: false}
```
* FF00AB02 = F F 0 0 A B 0 2 = 1111 1111 0000 0000 1010 1011 0000 0010 = 11111111000000001010101100000010
* 7854AC1 = 7 8 5 4 A C 1 = 0111 1000 0101 0100 1010 1100 0001 = 111100001010100101011000001
* 1E5340ACB38 = 1 E 5 3 4 0 A C B 3 8 = 0001 1110 0101 0011 0100 0000 1010 1100 1011 0011 1000 = 11110010100110100000010101100101100111000
```

## Bash

##### Упражнение 2-1. Шаблоны поиска

{line-numbers: false}
```
* README.md
```
Строка `00_README.txt` не подходит потому, что шаблон ожидает три символа после точки. А в `README` вообще нет точки.

##### Упражнение 2-2. Шаблоны поиска

{line-numbers: false}
```
* /usr/share/doc/openssl/IPAddressChoice_new.html
* /usr/share/doc_openssl/IPAddressChoice_new.html
* /doc/openssl
```
Строка `doc/openssl` не соответствует шаблону, потому что в ней нет символа `/` перед `doc`.

##### Упражнение 2-3. Использование команды find

{line-numbers: false}
```
find /usr -name "*.txt" -exec wc -l {} +
```
Чтобы найти все TXT файлы, подойдёт команда:
{line-numbers: false}
```
find / -name "*.txt"
```
Но если вы попробуйте расширить её действием `wc -l`, никакого вывода не будет:
{line-numbers: false}
```
find / -name "*.txt" -exec wc -l {} +
```
Помните сообщение об ошибке, которое выводится при запуске `find` в корневом каталоге? Текст этого сообщения будет передаваться в команду `wc`. Дальше команда будет интерпретировать каждое слово в качестве пути до файла. Очевидно, что эти пути окажутся недействительными и `wc` завершится с ошибкой. Поэтому запускать `find` надо в каталоге `/usr`, поскольку все TXT файлы находятся именно в нём.

##### Упражнение 2-4. Использование команды grep

Информацию о лицензии приложений логичнее будет искать в системном каталоге с документацией `/usr/share/doc`.

Для поиска приложений с лицензией [GNU General Public License](https://ru.wikipedia.org/wiki/GNU_General_Public_License) воспользуемся строкой "General Public License":
{line-numbers: false}
```
grep -Rl "General Public License" /usr/share/doc
```

Также имеет смысл поискать в каталоге `/usr/share/licenses`:
{line-numbers: false}
```
grep -Rl "General Public License" /usr/share/licenses
```

В окружении MSYS2 есть два неспецифичных для UNIX каталога установки `/mingw32` и `/mingw64`. Можно проверить и установленные в них программы:
{line-numbers: false}
```
grep -Rl "General Public License" /mingw32/share/doc
grep -Rl "General Public License" /mingw64/share
```

В случае лицензии MIT можно искать строку "MIT license" в тех же каталогах. Для Apache лицензии подойдёт строка "Apache license", а для BSD - "BSD license".

##### Упражнение 2-6. Использование команд для работы с файлами и каталогами

Прежде всего создадим каталоги, куда будем копировать фотографии:
{line-numbers: false}
```
mkdir -p ~photo/2019/11
mkdir -p ~photo/2019/12
mkdir -p ~photo/2020/01
```

Предположим, что все ваши фотографии хранятся в каталоге `D:\Photo`. У него могут быть подкаталоги, но для нашего упражнения это несущественно. С помощью командой `find` найдём все файлы, созданные в ноябре 2019 года. Для этого воспользуемся параметром `-newermt`:
{line-numbers: false}
```
find /d/Photo -type f -newermt 2019-11-01 ! -newermt 2019-12-01
```

Эта команда ищет файлы в каталоге `/d/Photo`, который соответствует пути `D:\Photo` в Windows окружении.

Первое выражение `-newermt 2019-11-01` означает выбрать все файлы, модифицированные начиная с 1 ноября 2019 года. Далее идёт выражение `! -newermt 2019-12-01`. Как вы помните, восклицательный знак означает отрицание. По аналогии с предыдущим выражением, `-newermt 2019-12-01` означает все файлы, модифицированные начиная с 1 декабря 2019 года. Между этими выражениями нет условия. В этом случае используется логическое И. В результате получилось высказывание: файлы, созданные после 1 ноября 2019 года, но не позднее 30 ноября 2019 года. Другими словами: файлы за ноябрь месяц.

Теперь к нашей команде `find` добавим действие компирования файлов:
{line-numbers: false}
```
find . -type f -newermt 2019-11-01 ! -newermt 2019-12-01 -exec cp {} ~/photo/2019/11 \;
```

В результате в каталог `~/photo/2019/11` будут скопированы файлы за ноябрь 2019 года. Выполним аналогичные команды для копирования фотографий за декабрь и январь:
{line-numbers: false}
```
find . -type f -newermt 2019-12-01 ! -newermt 2020-01-01 -exec cp {} ~/photo/2019/12 \;
find . -type f -newermt 2020-01-01 ! -newermt 2020-02-01 -exec cp {} ~/photo/2020/01 \;
```

Вы можете заменить команду копирования на переминование, если файлы в каталоге `D:\Photo` вам больше не нужны:
{line-numbers: false}
```
find . -type f -newermt 2019-11-01 ! -newermt 2019-12-01 -exec mv {} ~/photo/2019/11 \;
find . -type f -newermt 2019-12-01 ! -newermt 2020-01-01 -exec mv {} ~/photo/2019/12 \;
find . -type f -newermt 2020-01-01 ! -newermt 2020-02-01 -exec mv {} ~/photo/2020/01 \;
```

Обратите внимание на масштабируемость такого решения. Независимо от того сколько файлов находится в каталоге `D:\Photo`, чтобы разделить их по месяцам нужно всего три команды.