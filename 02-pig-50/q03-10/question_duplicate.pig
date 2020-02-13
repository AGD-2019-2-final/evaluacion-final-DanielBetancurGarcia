-- 
-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
fs -rm -f -r data.tsv;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
-- copia los archivos del sistema local al HDFS
fs -put ./data.tsv

-- carga de datos
A = LOAD './data.tsv' USING PigStorage('\t') AS (c1:CHARARRAY,c2:CHARARRAY,c3:INT); 
DUMP A;

-- Ordernar los datos por la 3ra columna
Result = ORDER A BY $2;
DUMP Result;

-- Obtener los 5 primeros registros de los datos ordenados
z = LIMIT Result 5;
DUMP z;

-- Obtener solo la 3ra columna 
v = FOREACH z GENERATE $2;
DUMP v;

-- Almacenar el resultado en la carpeta output
STORE v INTO 'output';