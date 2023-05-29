# Итоговая контрольная работа
---
## Информация о проекте
***
Необходимо организовать систему учета для питомника в котором живут
домашние и вьючные животные.
***
## Задание
1. Используя команду cat в терминале операционной системы Linux, создать
два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными (заполнив файл лошадьми, верблюдами и
ослы), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека).
2. Создать директорию, переместить файл туда.
3. Подключить дополнительный репозиторий MySQL. Установить любой пакет
из этого репозитория.
4. Установить и удалить deb-пакет с помощью dpkg.
5. Выложить историю команд в терминале ubuntu
6. Нарисовать диаграмму, в которой есть класс родительский класс, домашние
животные и вьючные животные, в составы которых в случае домашних
животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные
войдут: Лошади, верблюды и ослы.
7. В подключенном MySQL репозитории создать базу данных “Друзья
человека”
8. Создать таблицы с иерархией из диаграммы в БД
9. Заполнить низкоуровневые таблицы именами(животных), командами
которые они выполняют и датами рождения
10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой
питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу.
11.Создать новую таблицу “молодые животные” в которую попадут все
животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице
12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на
прошлую принадлежность к старым таблицам.
13. Создать класс с Инкапсуляцией методов и наследованием по диаграмме.
14. Написать программу, имитирующую работу реестра домашних животных.
В программе должен быть реализован следующий функционал:
* 14.1 Завести новое животное
* 14.2 определять животное в правильный класс
* 14.3 увидеть список команд, которое выполняет животное
* 14.4 обучить животное новым командам
* 14.5 Реализовать навигацию по меню
15. Создайте класс Счетчик, у которого есть метод add(), увеличивающий̆
значение внутренней̆int переменной̆на 1 при нажатие “Завести новое
животное” Сделайте так, чтобы с объектом такого типа можно было работать в
блоке try-with-resources. Нужно бросить исключение, если работа с объектом
типа счетчик была не в ресурсном try и/или ресурс остался открыт. Значение
считать в ресурсе try, если при заведения животного заполнены все поля.

## Итог
***
1. Используя команду cat в терминале операционной системы Linux, создать
два файла Домашние животные (заполнив файл собаками, кошками,
хомяками) и Вьючные животными (заполнив файл лошадьми, верблюдами и
ослы), а затем объединить их. Просмотреть содержимое созданного файла.
Переименовать файл, дав ему новое имя (Друзья человека).

Выполнение команды:

+ cat > "Домашние животные.txt"
+ cat > "Вьючные животные.txt"
+ cat > "Домашние животные.txt" "Вьючные животные.txt" > "Друзья человека.txt"
+ cat "Друзья человека.txt"

[Task_1](Screenshots/Task_1.png)

2. Создать директорию, переместить файл туда.

Выполнение команды:

+ mkdir > "Питомник"
+ "Друзья человека.txt" /home/user1/Питомник

[Task_2](Screenshots/Task_2.png)

3. Подключить дополнительный репозиторий MySQL. Установить любой пакет из этого репозитория.

Выполнение команды:

+ wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
+ sudo apt install ./mysql-apt-config_0.8.12-1_all.deb
+ sudo apt-get update
+ sudo apt install -f mysql-client=8.0* mysql-community-server=8.0* mysql-server=8.0*

[Task_3.1](Screenshots/Task_3.1.png)

[Task_3.2](Screenshots/Task_3.2.png)

[Task_3.3](Screenshots/Task_3.3.png)

4. Установить и удалить deb-пакет с помощью dpkg.

Выполнение команд:

+ wget http://archive.ubuntu.com/ubuntu/pool/universe/c/cowsay/cowsay_3.03+dfsg2-4_all.deb(загрузим простой пакет deb)
+ ls -l *.deb (подтвердим загрузку файла .deb, перечислив содержимое каталога с помощью команды ls)
+ sudo dpkg -i cowsay_3.03+dfsg2-4_all.deb (установим пакет с помощью dpkg)
+ dpkg -l cowsay (просмотрим установленный пакет)
+ dpkg -s cowsay (проверим установку)
+ sudo dpkg -r cowsay (удалим пакет)

[Task_4.1](Screenshots/Task_4.1.png)

[Task_4.2](Screenshots/Task_4.2.png)

5. Выложить историю команд в терминале ubuntu

[История_команд_в_терминале](Terminal_history.md)

6. Нарисовать [диаграмму](UML.drawio), в которой есть класс родительский класс, домашние
животные и вьючные животные, в составе которых в случае домашних
животных войдут классы: собаки, кошки, хомяки, а в класс вьючные животные
войдут: лошади, верблюды и ослы.

![Диаграмма](Screenshots\Diagramma.png)






















[def]: Terminal_history