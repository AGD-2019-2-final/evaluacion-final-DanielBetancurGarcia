
-- copia los archivos del sistema local al HDFS
fs -put ./truck_event_text_partition.csv

data = LOAD 'truck_event_text_partition.csv' using PigStorage(',') AS (driverId:INT, truckId:INT, eventTime:CHARARRAY,
                                                                        eventType:CHARARRAY, longitude:CHARARRAY, latitude:CHARARRAY,
                                                                        eventKey:CHARARRAY, correlationId:CHARARRAY, driverName:CHARARRAY,
                                                                        routeId:CHARARRAY, routeName:CHARARRAY, eventDate:CHARARRAY);
data1 = FOREACH data GENERATE driverId, truckId, eventTime;
data2 = LIMIT data1 10;
data3 = ORDER data2 BY driverId, truckId, eventTime;
STORE data3 INTO 'output';
-- copia los archivos del HDFS al sistema local
fs -get output/ .
