/* PARTE A */
use mysql;
CREATE ROLE db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.playlist TO db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.playlisttrack TO db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.track TO db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.album TO db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.artist TO db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.mediatype TO db_pasante;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.genre TO db_pasante;
GRANT SELECT ON chinook.TopArtists TO db_pasante;

/* PARTE B */
use mysql;
CREATE ROLE db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.employee TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.customer TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.invoice TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.album TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.invoiceline TO db_contable;
GRANT EXECUTE ON PROCEDURE chinook.GetInvoicePrice TO db_contable;
GRANT SELECT ON chinook.upsellingtracks TO db_contable;

/* PARTE C */
use mysql;
CREATE ROLE db_empleado;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.* TO db_empleado;
