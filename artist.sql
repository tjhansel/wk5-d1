INSERT INTO artist(artist_id, name)
VALUES(276, 'Emmerson, Lake, and Plamer'),
(277, 'Rick Wakemen'),
(278, 'E.S. Posthumus');

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
--Select 5 artists in alphabetical order.
SELECT * FROM artist ORDER BY name LIMIT 5;
--Select all artists that start with the word ‘Black’.
SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';