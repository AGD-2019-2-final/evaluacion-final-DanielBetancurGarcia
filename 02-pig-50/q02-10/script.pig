
-- copia los archivos del sistema local al HDFS
fs -put ./data.tsv

u = LOAD 'data.tsv' AS (f1:CHARARRAY, f2:CHARARRAY, f3:INT);
orden = RANK u by f1,f3;
filtro = FOREACH orden GENERATE f1,f2,f3;

STORE filtro INTO 'output' using PigStorage('\t');

-- copia los archivos del HDFS al sistema local
fs -get output/ .
