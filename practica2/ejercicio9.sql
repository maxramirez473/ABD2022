START TRANSACTION;
INSERT INTO Customer(CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
VALUES (60,'Juan', 'Perez','UTN FRLP', '1 y 60', 'La plata', 'Argentina', 'Buenos Aires', '1900', '+549 1234564789','+549 123456789', 'juanperez@utn.frlp.com', 3);
INSERT INTO Invoice(invoiceId, customerId, invoiceDate, billingAddress, billingCity, billingCountry, billingPostalCode, total)
VALUES (413, 60, '2020-09-25 00:00:00', '60 y 124', 'La Plata', 'Argentina', '1900', 2.99);
INSERT INTO InvoiceLine(invoiceLineId, invoiceId, trackId, unitprice, Quantity)
VALUES (2241, 413, 49, 1.95, 1);
INSERT INTO InvoiceLine(invoiceLineId, invoiceId, trackId, unitprice, Quantity)
VALUES (2242, 413, 50, 1.95, 1);
INSERT INTO InvoiceLine(invoiceLineId, invoiceId, trackId, unitprice, Quantity)
VALUES (2243, 413, 51, 1.95, 1);
INSERT INTO InvoiceLine(invoiceLineId, invoiceId, trackId, unitprice, Quantity)
VALUES (2244, 413, 52, 1.95, 1);

COMMIT;

#Guarda duplicados en el caso de la factura (por tener el modo autocommit habilitado).

#Se revierten los cambios realizados en la transaccion

