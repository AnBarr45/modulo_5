--Crea un Customer
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active) 
VALUES (1,'Armando', 'Mesas', 'Amesas12345@gmail.com', 56, 1);


--Crea un Staff
INSERT INTO staff(first_name, last_name, address_id, email, store_id, active, username) 
VALUES ('Adelina', 'Rojas', 183, 'Ade_rojas234@gmail.com', 2, 1, 'Adelina');

--Crea un Actor
INSERT INTO actor(first_name, last_name) 
VALUES ('Humberto', 'Bolaños');


--Modifica el Customer
UPDATE customer SET active = 0 WHERE first_name = 'Armando' AND last_name = 'Mesas';

--Modifica el Staff
UPDATE staff SET store_id = 1 WHERE username = 'Adelina';

--Modifica el Actor 
UPDATE actor SET first_name = 'Roberto' WHERE first_name = 'Humberto';

-- Listar para confirmar que los datos son correctos
SELECT * FROM customer WHERE first_name = 'Armando' AND last_name = 'Mesas';
SELECT * FROM staff WHERE username = 'Adelina';
SELECT * FROM actor WHERE first_name = 'Roberto' AND last_name = 'Bolaños';

--Elimina el Customer
DELETE FROM customer WHERE first_name = 'Armando' AND last_name = 'Mesas';
DELETE FROM staff WHERE username = 'Adelina';
DELETE FROM actor WHERE first_name = 'Roberto' AND last_name = 'Bolaños';

-- Listar de nuevo para confirmar que los datos han sido eliminados
SELECT * FROM customer WHERE first_name = 'Armando' AND last_name = 'Mesas';
SELECT * FROM staff WHERE username = 'Adelina';
SELECT * FROM actor WHERE first_name = 'Roberto' AND last_name = 'Bolaños';
