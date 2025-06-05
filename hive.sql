DROP TABLE IF EXISTS hotel_postgres;

DROP TABLE IF EXISTS hotel_review_oraclenosql;

CREATE EXTERNAL TABLE  hotel_review_oraclenosql (review_id string, hotel_id int, client_email string, rating int, comment string, review_date string)
STORED BY 'oracle.kv.hadoop.hive.table.TableStorageHandler'
TBLPROPERTIES (
  "oracle.kv.kvstore" = "kvstore",
  "oracle.kv.hosts" = "oraclenosql:5000", 
  "oracle.kv.hadoop.hosts" = "localhost/127.0.0.1", 
  "oracle.kv.tableName" = "review"
);


CREATE EXTERNAL TABLE hotel_postgres (
  hotel_id INT,
  nom STRING,
  adresse STRING,
  ville STRING,
  pays STRING,
  categorie INT,
  nb_chambres INT,
  prix_moyen FLOAT,
  coordonnees_gps STRING,
  date_creation TIMESTAMP
)
STORED BY 'org.apache.hive.storage.jdbc.JdbcStorageHandler'
TBLPROPERTIES (
  "hive.sql.database.type" = "POSTGRES",
  "hive.sql.jdbc.driver" = "org.postgresql.Driver",
  "hive.sql.jdbc.url" = "jdbc:postgresql://hotel_postgres:5432/hotel_db",
  "hive.sql.dbcp.username" = "hotel_admin",
  "hive.sql.dbcp.password" = "hotel@123",
  "hive.sql.table" = "hotels"
);