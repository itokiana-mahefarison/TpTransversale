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
LOCATION '/tmp/activity_search_logs';

ALTER TABLE activity_search_logs SET TBLPROPERTIES ("skip.header.line.count"="1");
