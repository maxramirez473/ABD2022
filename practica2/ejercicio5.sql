/* EJERCICIO 5 */

CREATE VIEW CountrySales AS 
SELECT C.Country, SUM(IC.Quantity) AS VentasPorPais
FROM Customer C
INNER JOIN Invoice IV on C.CustomerId=IV.CustomerId
INNER JOIN Invoiceline IC ON IV.InvoiceId=IC.InvoiceId
INNER JOIN Track T ON  IC.TrackId=T.TrackId
GROUP BY C.Country