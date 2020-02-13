-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data1 = LOAD './data.tsv' AS (f1:CHARARRAY, f2:BAG{}, f3:map[]);
data2 = FOREACH data1 GENERATE FLATTEN(f2);
data3 = GROUP data2 BY $0;
data4 = FOREACH data3 GENERATE group, COUNT(data2.$0) AS conteo;
STORE data4 INTO 'output' using PigStorage('\t');
