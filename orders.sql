CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(35),
    product_price FLOAT(2),
    quantity INTEGER
);

INSERT INTO orders(person_id,product_name,product_price,quantity)
VALUES(1,'Power Puff Doll',15,5),
(2,'Wand',35,20),
(3,'Hot Wheels',2,250)
(4,'Jump-O',55,500)
(5,'Mr. Spell', 42,60);

-- Select all the records from the orders table.
SELECT * FROM orders;
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- Calculate the total order price.
--SELECT SUM(product_price) FROM orders;
SELECT SUM(product_price*quantity) FROM orders;
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price*quantity) FROM orders WHERE person_id = 2;