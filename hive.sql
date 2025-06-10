DROP TABLE IF EXISTS hotel_oraclenosql;

DROP TABLE IF EXISTS hotel_review_oraclenosql;

CREATE EXTERNAL TABLE  hotel_oraclenosql (hotel_id string, hotel_name string)
STORED BY 'oracle.kv.hadoop.hive.table.TableStorageHandler'
TBLPROPERTIES (
  "oracle.kv.kvstore" = "kvstore",
  "oracle.kv.hosts" = "oraclenosql:5000", 
  "oracle.kv.hadoop.hosts" = "localhost/127.0.0.1", 
  "oracle.kv.tableName" = "hotel"
);

CREATE EXTERNAL TABLE  hotel_review_oraclenosql (hotel_id string, review_id string, client_name string, rating int, comment string, review_date string)
STORED BY 'oracle.kv.hadoop.hive.table.TableStorageHandler'
TBLPROPERTIES (
  "oracle.kv.kvstore" = "kvstore",
  "oracle.kv.hosts" = "oraclenosql:5000", 
  "oracle.kv.hadoop.hosts" = "localhost/127.0.0.1", 
  "oracle.kv.tableName" = "hotel.review"
);