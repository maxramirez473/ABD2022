use mysql;
CREATE USER 'Juan'@'localhost' IDENTIFIED BY '1234';
GRANT db_pasante TO 'Juan'@'localhost';
SET DEFAULT ROLE db_pasante FOR 'Juan'@'localhost';

use mysql;
CREATE USER 'Pedro'@'localhost' IDENTIFIED BY '1234';
GRANT db_contable TO 'Pedro'@'localhost';
SET DEFAULT ROLE db_contable FOR 'Pedro'@'localhost';

use mysql;
CREATE USER 'Maria'@'localhost' IDENTIFIED BY '1234';
GRANT db_empleado TO 'Maria'@'localhost';
SET DEFAULT ROLE db_empleado FOR 'Maria'@'localhost';

/* VER USUARIOS Y ROLES*/
select u.user, u.is_role, u.default_role from mysql.user as u where u.user!='root' order by u.is_role;