-- Create a table called orders that records: order_id, person_id, product_name,
-- product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id TEXT PRIMARY KEY NOT NULL,
    product_name VARCHAR (40) NOT NULL,
    product_price INTEGER NOT NULL,
    quantity INTEGER
);
-- Add 5 orders to the orders table.
INSERT INTO person (person_id, product_name, product_price, quantity)
VALUES ('email1@email.com', 'rock', 10, 1),
 ('email2@email.com', 'rap', 11, 2),
 ('email3@email.com', 'classical', 12, 3),
 ('email4@email.com', 'pop', 13, 4),
 ('email5@email.com', 'alternative', 14, 5);
-- Make orders for at least two different people.
INSERT INTO person (person_id, product_name, product_price, quantity)
VALUES ('email6@email.com', 'rock', 10, 1),
 ('email7@email.com', 'rock', 10, 1);
-- person_id should be different for different people.
yup
-- Select all the records from the orders table.
SELECT * FROM orders;
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;
-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 'email1@email.com';