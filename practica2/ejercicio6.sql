DELIMITER // 
CREATE PROCEDURE GetInvoicePrice(IN id INT, OUT total float)
BEGIN 
SELECT sum(il.UnitPrice) into total 
FROM invoiceline AS il
INNER JOIN invoice AS i
ON i.InvoiceId=il.InvoiceId
WHERE i.InvoiceId=id;
end //
DELIMITER ;

/*Ejemplo de ejecucion*/
CALL GetInvoicePrice(3, @total);
SELECT TRUNCATE(@total,2) AS suma_total;
