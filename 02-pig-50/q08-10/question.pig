-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data1 = LOAD 'data.tsv' AS (f1:CHARARRAY, f2:BAG{}, f3:MAP[]);
data2 = FOREACH data1 GENERATE f1 AS LETRA, FLATTEN(f2) AS col2, FLATTEN(f3) AS col3;
data3 = FOREACH data2 GENERATE col2, col3;
data4 = GROUP data3 BY (col2,col3);
data5 = FOREACH data4 GENERATE $0, COUNT($1);
STORE data5 INTO 'output' USING PigStorage ('\t');