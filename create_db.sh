echo "Create db"
mysql -h localhost -P 3306 -uroot -proot --compress < create_db_blindtest.sql
echo "Done."