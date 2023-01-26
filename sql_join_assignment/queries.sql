
--1. 
SELECT * FROM owners FULL JOIN vehicles ON vehicles.owner_id = owners.id;



--2.
SELECT first_name, last_name, COUNT(*) AS count FROM vehicles JOIN owners ON vehicles.owner_id = owners.id GROUP BY owners.id ORDER BY count asc;



--3.
SELECT first_name, last_name, COUNT(*) AS count, AVG(price) AS average FROM vehicles JOIN owners ON vehicles.owner_id = owners.id GROUP BY owners.id HAVING AVG(price) > 1
0000 ORDER BY first_name desc;