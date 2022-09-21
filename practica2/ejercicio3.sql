CREATE VIEW UpsellingTracks AS
SELECT t.TrackId, t.Name, t.UnitPrice FROM track as t 
INNER JOIN invoiceline AS il
ON il.TrackId=t.TrackId
INNER JOIN invoice AS i 
ON i.InvoiceId=il.InvoiceId
WHERE t.UnitPrice >= 0.99 AND i.Total >= 9.99;