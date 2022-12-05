CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    person_name VARCHAR(30),
    age INTEGER NOT NULL,
    person_height FLOAT NOT NULL,
    city VARCHAR(30),
    favorite_color VARCHAR(10)
);
INSERT INTO person (person_name,age, person_height, city, favorite_color)
VALUES ('C.J.','55', '192.12', 'Omaha', 'green'),
('Jordan','36', '187.96', 'Kearns', 'Blue'),
('Andre','46','223.24','Coulommiers','Black'),
('Lukas','28', '138.11', 'Texas Town', 'Yellow'),
('Amber','21', '170', 'South Weber', 'Teal');

-- LISt height in descending order
SELECT * FROM person
ORDER BY person_height DESC;
-- list height in order
SELECT * FROM person
ORDER BY person_height;
--list age in order oldest to youngest
SELECT * FROM person
ORDER BY age DESC;
-- Select all the people in the person table older than age 20.
SELECT * FROM person WHERE age > 20;
-- Select all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age === 18;
--Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 25 OR age > 35;

--Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE age <> 27;
--Select all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE favorite_color <> 'Red';
--Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE favorite_color NOT IN('Yellow','Blue');
--Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE favorite_color IN('Orange','green');