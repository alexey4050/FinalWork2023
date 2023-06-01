## 
CREATE DATABASE Human_friends;

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
    Name VARCHAR(20), 
    birthday DATE,
    commands VARCHAR(50),
    genus_id int,
    Foreign KEY (genus_id) REFERENCES home_animals (id) ON DELETE CASCADE ON UPDATE CASCADE
);


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