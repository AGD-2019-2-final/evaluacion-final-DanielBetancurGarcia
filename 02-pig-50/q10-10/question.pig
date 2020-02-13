-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Genere una relación con el apellido y su longitud. Ordene por longitud y 
-- por apellido. Obtenga la siguiente salida.
-- 
--   Hamilton,8
--   Garrett,7
--   Holcomb,7
--   Coffey,6
--   Conway,6
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
u = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data1 = FOREACH u GENERATE surname;
data2 = FILTER data1 BY surname == 'Hamilton' OR surname == 'Garrett' OR surname == 'Holcomb' OR surname == 'Coffey' OR surname == 'Conway';
data3 = FOREACH data2 GENERATE surname, SIZE(surname);
data4 = ORDER data3 BY $1 DESC, $0;
STORE data4 INTO 'output' USING PigStorage (',');