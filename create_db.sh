echo "Create db"
mysql -h localhost -P 3306 -uroot -proot --compress < db/create_db_blindtest.sql
echo "Import Data"
mysql -h localhost -P 3306 -uroot -proot --compress < db/insert_data_blindtest.sql
echo "Done."