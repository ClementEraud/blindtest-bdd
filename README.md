# blindtest-bdd
BDD for blindtest at Devfest Nantes 2019

# Install MySQL 
https://dev.mysql.com/downloads/installer/

# Create And Insert Using script
( don't forget to drop schema if you have created it before )
./create_db.sh 

# Create BDD
mysql -h localhost -P 3306 -uroot -proot --compress < create_db_blindtest.sql

# Insert Data
mysql -h localhost -P 3306 -uroot -proot --compress < insert_data_blindtest.sql

