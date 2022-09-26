/* Crear la tabla de log */

CREATE TABLE `chinook`.`log` (
    `logid` INT NOT NULL,
    `fecha` DATETIME NOT NULL,
    `accion` VARCHAR(300) NOT NULL,
    `idfactura` INT NULL,
    `user` VARCHAR(45) NULL,
    PRIMARY KEY (`logid`)
);

/* Trigger post Insert */
USE chinook;
DROP TRIGGER IF EXISTS post_insert
DELIMITER $$
CREATE TRIGGER post_insert
	AFTER INSERT ON invoice
    FOR EACH ROW
BEGIN
	INSERT INTO log
		VALUES(
			DEFAULT,
			now(),
            CONCAT("INSERT INTO Invoice VALUES(",NEW.InvoiceId,", ",NEW.CustomerId,", ",NEW.InvoiceDate,", ",NEW.BillingAddress,", ",NEW.BillingCity,", ",NEW.BillingCountry,", ",NEW.BillingPostalCode,", ",NEW.Total,");"),
            NEW.InvoiceId,
            CURRENT_USER()
        );
END;
$$
DELIMITER ;

/* POST DELETE */
USE chinook;
DROP TRIGGER IF EXISTS post_delete
DELIMITER $$
CREATE TRIGGER post_delete
	AFTER DELETE ON invoice
    FOR EACH ROW
BEGIN
	INSERT INTO log
		VALUES(
			DEFAULT,
			now(),
            CONCAT("Deleted VALUES(",OLD.InvoiceId,", ",OLD.CustomerId,", ",OLD.InvoiceDate,", ",OLD.BillingAddress,", ",OLD.BillingCity,", ",OLD.BillingCountry,", ",OLD.BillingPostalCode,", ",OLD.Total,");"),
            OLD.InvoiceId,
            CURRENT_USER()
        );
END;
$$
DELIMITER ;

/* Valores de Prueba */
INSERT INTO `Invoice` (`InvoiceId`, `CustomerId`, `InvoiceDate`, `BillingAddress`, `BillingCity`, `BillingCountry`, `BillingPostalCode`, `Total`) 
VALUES (1000, 2, now(), N'60 y 124', N'Berisso', N'Argentina', N'1900', 500.50);

DELETE FROM invoice Where InvoiceId >= 1000;