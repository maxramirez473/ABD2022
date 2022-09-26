/* EJERCICIO 4 */
use chinook;
CREATE VIEW TopArtists AS 
SELECT A.Name, SUM(I.Quantity) AS CantidadVendida
FROM Artist A
INNER JOIN Album AL ON A.ArtistId=AL.ArtistId
INNER JOIN Track T ON  AL.AlbumId=T.AlbumId
INNER JOIN Invoiceline I ON T.TrackId=I.TrackId
GROUP BY A.Name ORDER BY CantidadVendida DESC LIMIT 10;
