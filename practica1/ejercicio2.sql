INSERT INTO Año(id_año)
SELECT DISTINCT ano from accidentes;

INSERT INTO ComunidadAutonoma(id_ccaa, ccaa)
SELECT DISTINCT id_ccaa, ccaa from accidentes;

INSERT INTO TipoVia(id_tipo_via, tipo_via)
SELECT DISTINCT id_tipo_via, tipo_via from accidentes;

INSERT INTO provincia(ccaa_id, id_provincia, provincia)
SELECT DISTINCT id_ccaa, id_provincia, provincia from accidentes;

INSERT INTO InfoAccidente(fallecidos, heridos_hospitalizados, heridos_no_hospitalizados,
            accidentes_mortales_30_dias, accidentes_con_victimas, año_id, 
            provincia_id, tipo_via_id)
       SELECT fallecidos, heridos_hospitalizados, heridos_no_hospitalizados, accidentes_mortales_30_dias,
       accidentes_con_victimas, ano, id_provincia, id_tipo_via
       FROM accidentes;

