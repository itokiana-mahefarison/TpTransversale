DROP TABLE IF EXISTS activity_search_logs;

CREATE EXTERNAL TABLE IF NOT EXISTS activity_search_logs (
    date_log STRING,
    session_id STRING,
    client_id INT,
    ip_address STRING,
    user_agent STRING,
    search_query STRING,
    filters STRING,
    results_count INT,
    page_number INT,
    action STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION 'hdfs://hadoop-namenode:9000/hotel/activity_search_logs/';



DROP TABLE IF EXISTS hotel_search_logs;

CREATE EXTERNAL TABLE IF NOT EXISTS hotel_search_logs (
    date_log STRING,
    session_id STRING,
    client_id INT,
    ip_address STRING,
    user_agent STRING,
    search_query STRING,
    filters STRING,
    results_count INT,
    page_number INT,
    action STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION 'hdfs://hadoop-namenode:9000/hotel/hotel_search_logs/';






DROP TABLE IF EXISTS search_logs_2023;

CREATE EXTERNAL TABLE IF NOT EXISTS search_logs_2023 (
    date_log STRING,
    user_id INT,
    query STRING,
    location STRING,
    clicked_hotel_id STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION 'hdfs://hadoop-namenode:9000/hotel/search_logs_2023/';





DROP TABLE IF EXISTS weather_data;

CREATE EXTERNAL TABLE IF NOT EXISTS weather_data (
    date_log STRING,
    location STRING,
    temperature FLOAT,
    precipitation FLOAT,
    weather_condition STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 'hdfs://hadoop-namenode:9000/hotel/weather_data/';
