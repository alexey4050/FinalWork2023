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

![Диаграмма](/Screenshots/Diagramma.png)

7. В подключенном MySQL репозитории создать базу данных “Друзья человека”

CREATE DATABASE Human_friends;

8. Создать таблицы с иерархией из диаграммы в БД.

USE Human_friends;
CREATE TABLE animal_classes
(
    id INT PRIMARY KEY, 
	class_name VARCHAR(20)
);

INSERT INTO animal_classes (class_name)
VALUES ('вьючные'),
('домашние');  


CREATE TABLE packed_animals
(
	id INT PRIMARY KEY,
    genus_name VARCHAR (20),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES animal_classes (id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO packed_animals (genus_name, class_id)
VALUES ('Лошади', 1),
('Ослы', 1),  
('Верблюды', 1); 
    
CREATE TABLE home_animals
(
	id INT PRIMARY KEY,
    genus_name VARCHAR (20),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES animal_classes (Id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO home_animals (genus_name, class_id)
VALUES ('Кошки', 2),
('Собаки', 2),  
('Хомяки', 2); 

CREATE TABLE cats 
(       
    id INT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);

 9. Заполнить низкоуровневые таблицы именами(животных), командами
которые они выполняют и датами рождения. 

INSERT INTO cats (name, birthday, commands, genus_id)
VALUES ('Муся', '2011-01-01', 'кс-кс-кс', 1),
('Ночка', '2016-01-01', 'иди ко мне', 1),  
('Мурка', '2017-01-01', NULL, 1); 

CREATE TABLE dogs 
(       
    id INT  PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO dogs (name, birthday, commands, genus_id)
VALUES ('Шерлок', '2022-01-01', 'ко мне, лежать, лапу, голос', 2),
('Тузик', '2015-06-12', 'сидеть, лежать, лапу', 2),  
('Шарик', '2019-07-01', 'сидеть, лежать, лапу, след, фас', 2), 
('Пепел', '2021-04-01', 'сидеть, лежать, фу, место', 2);

CREATE TABLE hamsters 
(       
    id INT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO hamsters (name, birthday, commands, genus_id)
VALUES ('Пупс', '2020-06-12', NULL, 3),
('Белка', '2021-07-12', 'атака сверху', 3),  
('Стрелка', '2022-01-11', NULL, 3), 
('Рыжик', '2022-09-10', NULL, 3);

CREATE TABLE horses 
(       
    id INT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO horses (name, birthday, commands, genus_id)
VALUES ('Гроза', '2020-01-12', 'бегом, шагом', 1),
('Звездочка', '2017-03-12', 'бегом, шагом, хоп', 1),  
('Буран', '2016-07-12', 'бегом, шагом, хоп, брр', 1), 
('Молния', '2020-11-10', 'бегом, шагом, хоп', 1);

CREATE TABLE donkeys 
(       
    Id INT  PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO donkeys (name, birthday, commands, genus_id)
VALUES ('Первый', '2018-03-08', NULL, 2),
('Второй', '2020-03-14', NULL, 2),  
('Третий', '2021-07-11', NULL, 2), 
('Четвертый', '2022-11-06', NULL, 2);

CREATE TABLE camels 
(       
    id INT PRIMARY KEY, 
    name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES packed_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO camels (name, birthday, commands, genus_id)
VALUES ('Горбатый', '2022-04-10', 'вернись', 3),
('Самец', '2019-03-12', 'остановись', 3),  
('Сифон', '2015-07-12', 'повернись', 3), 
('Борода', '2022-12-10', 'улыбнись', 3);







