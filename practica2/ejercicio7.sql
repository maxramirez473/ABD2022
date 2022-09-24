/* PARTE B */
CREATE ROLE db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.employee TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.customer TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.invoice TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.album TO db_contable;
GRANT SELECT, INSERT, UPDATE, DROP ON chinook.invoiceline TO db_contable;
GRANT EXECUTE ON PROCEDURE chinook.GetInvoicePrice TO db_contable;
GRANT SELECT ON chinook.upsellingtracks TO db_contable;