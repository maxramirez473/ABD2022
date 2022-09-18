/* EJERCICIO 1 */
SELECT p.provincia as PROVINCIAS, tv.tipo_via AS VIAS FROM infoaccidente ia
INNER JOIN provincia AS p
ON ia.provincia_id = p.id_provincia
INNER JOIN tipovia AS tv
ON tv.id_tipo_via = ia.tipo_via_id
WHERE ia.año_id = 2015 AND ia.accidentes_mortales_30_dias = 0;

/* EJERCICIO 2 */
SELECT P.provincia, ia.accidentes_con_victimas AS CANTIDAD FROM provincia AS p
INNER JOIN comunidadautonoma AS ca 
ON ca.id_ccaa=p.ccaa_id
INNER JOIN infoaccidente AS ia
ON ia.provincia_id=p.id_provincia
INNER JOIN tipovia AS tv
ON tv.id_tipo_via=ia.tipo_via_id
WHERE ca.ccaa='Andalucía' AND ia.accidentes_con_victimas >= 25 AND
ia.año_id=2014 AND tv.tipo_via='Interurbana';

/* EJERCICIO 3 */
SELECT ca.ccaa, MAX(ia.accidentes_con_victimas) AS accidentes
FROM comunidadautonoma AS ca 
INNER JOIN provincia as p 
ON p.ccaa_id=ca.id_ccaa
INNER JOIN infoaccidente AS ia 
ON ia.provincia_id=p.id_provincia
WHERE ia.año_id=2015;

/* EJERCICIO 9 */
SELECT p.provincia, (ia.heridos_hospitalizados + ia.heridos_no_hospitalizados) AS TOTAL
FROM provincia AS p 
INNER JOIN infoaccidente AS ia 
ON ia.provincia_id=p.id_provincia
INNER JOIN tipovia AS tv 
ON tv.id_tipo_via=ia.tipo_via_id
WHERE ia.año_id=2015 AND tv.tipo_via='Interurbana'
ORDER by TOTAL DESC
LIMIT 3;

/* EJERCICIO 10 */
SELECT 
    (SELECT (ia.heridos_hospitalizados / ia.heridos_no_hospitalizados) AS PROPORCION
    FROM comunidadautonoma AS ca 
    INNER JOIN provincia AS p 
    ON p.ccaa_id=ca.id_ccaa
    INNER JOIN infoaccidente AS ia 
    ON ia.provincia_id=p.id_provincia
    INNER JOIN tipovia AS tv 
    ON tv.id_tipo_via=ia.tipo_via_id
    WHERE ia.heridos_no_hospitalizados >=1 AND
    ia.año_id=2014 AND 
    tv.tipo_via='Interurbana' AND
    ca.ccaa='Principado de Asturias') /*OBTIENE EL LA PROPORCION DEL AÑO 2014*/
    -                                 /*REALIZA LA DIREFENCIA ENTRE AMBOS*/
    (SELECT (ia.heridos_hospitalizados / ia.heridos_no_hospitalizados) AS PROPORCION
    FROM comunidadautonoma AS ca 
    INNER JOIN provincia AS p 
    ON p.ccaa_id=ca.id_ccaa
    INNER JOIN infoaccidente AS ia 
    ON ia.provincia_id=p.id_provincia
    INNER JOIN tipovia AS tv 
    ON tv.id_tipo_via=ia.tipo_via_id
    WHERE ia.heridos_no_hospitalizados >=1 AND
    ia.año_id=2015 AND 
    tv.tipo_via='Interurbana' AND
    ca.ccaa='Principado de Asturias') /*OBTIENE EL LA PROPORCION DEL AÑO 2015*/
AS Diferencia;