-- 
-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
-- copia los archivos del sistema local al HDFS
u = LOAD 'data.tsv' AS (f1:CHARARRAY, f2:CHARARRAY, f3:INT);
numeros = FOREACH u GENERATE f3;
Result = ORDER numeros BY f3;
primeros5 = LIMIT Result 5;
STORE primeros5 INTO 'output';