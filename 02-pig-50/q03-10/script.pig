
-- copia los archivos del sistema local al HDFS
fs -put ./data.tsv

u = LOAD 'data.tsv' AS (f1:CHARARRAY, f2:CHARARRAY, f3:INT);
orden = RANK u by f3;
numeros = FOREACH orden GENERATE f3;
primeros5 = LIMIT numeros 5;
Result = ORDER primeros5 BY f3;
STORE Result INTO 'output';
-- copia los archivos del HDFS al sistema local
fs -get output/ .
