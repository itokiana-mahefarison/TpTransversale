docker cp ./init-oraclenosql.sql hotel_oraclenosql:/app/kv-24.4.9/init-oraclenosql.sql
docker exec hotel_oraclenosql bash -c "java -jar lib/sql.jar -helper-hosts localhost:5000 -store kvstore < init-oraclenosql.sql"
docker exec hotel_oraclenosql rm /app/kv-24.4.9/init-oraclenosql.sql