CREATE USER 'Juan'@'localhost' IDENTIFIED BY '1234';
GRANT db_pasante TO 'Juan'@'localhost';
SET DEFAULT ROLE db_pasante TO 'Juan'@'localhost';

CREATE USER 'Pedro'@'localhost' IDENTIFIED BY '1234';
GRANT db_contable TO 'Pedro'@'localhost';
SET DEFAULT ROLE db_contable FOR 'Pedro'@'localhost';

CREATE USER 'Maria'@'localhost' IDENTIFIED BY '1234';
GRANT db_empleado TO 'Maria'@'localhost';
SET DEFAULT ROLE db_empleado FOR 'Maria'@'localhost';