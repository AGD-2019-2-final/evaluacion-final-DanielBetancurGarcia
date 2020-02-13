-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data1 = LOAD './data.tsv' AS (f1:CHARARRAY, f2:BAG{}, f3:map[]);
data2 = FOREACH data1 GENERATE FLATTEN(f3);
data3 = GROUP data2 BY $0;
data4 = FOREACH data3 GENERATE group, COUNT(data2.$0) AS conteo;
STORE data4 INTO 'output' using PigStorage(',');