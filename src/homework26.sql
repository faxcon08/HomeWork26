SELECT * FROM employee;
CREATE TABLE city (city_id INT NOT NULL PRIMARY KEY, city_name VARCHAR(60) NOT NULL);
INSERT INTO city (city_id,city_name) VALUES
                                         (1,'Москва'),
                                         (2,'Санкт-Петербург'),
                                         (3,'Екатеринбург'),
                                         (4,'Пермь'),
                                         (5,'Казань'),
                                         (6,'Новгород'),
                                         (7,'Пенза');
SELECT * FROM city;
ALTER TABLE employee ADD COLUMN city_id INT NOT NULL DEFAULT 1;
ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city (city_id);
UPDATE employee SET city_id = 2 WHERE  id = 6;
UPDATE employee SET city_id = 3 WHERE  id = 7;
UPDATE employee SET city_id = 4 WHERE  id = 4;
UPDATE employee SET city_id = 5 WHERE  id = 5;
SELECT * FROM employee;



SELECT first_name AS Фамилия, last_name AS Имя, city_name AS Город FROM employee JOIN city ON employee.city_id=city.city_id;
SELECT  city_name AS Город, first_name, last_name FROM city LEFT OUTER JOIN employee ON employee.city_id=city.city_id;
SELECT last_name, city_name FROM employee FULL OUTER JOIN city ON employee.city_id=city.city_id;
SELECT last_name, city_name FROM employee CROSS JOIN city;
SELECT city.city_name FROM city LEFT JOIN  employee ON city.city_id=employee.city_id WHERE employee.last_name is NULL;