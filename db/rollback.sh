#!/bin/bash


echo "start"

HOST="39.104.226.149"
DBNAME="yellow_page"
PORT=3307
create_db_sql="create database IF NOT EXISTS ${DBNAME}"

mysql -uroot -proot -P $PORT -h $HOST -e "${create_db_sql}"
mysql -u root -proot -P $PORT -h $HOST ${DBNAME} < ./dump_gallery.sql


DBNAME2="wordpress"
create_db_sql="create database IF NOT EXISTS ${DBNAME2}"

mysql -uroot -proot -P $PORT -h $HOST -e "${create_db_sql}"
mysql -u root -proot -P $PORT -h $HOST ${DBNAME2} < ./dump_wordpress.sql


DBNAME3="ghost"
create_db_sql="create database IF NOT EXISTS ${DBNAME3}"

mysql -uroot -proot -P $PORT -h $HOST -e "${create_db_sql}"
mysql -u root -proot -P $PORT -h $HOST ${DBNAME3} < ./dump_ghost.sql

echo "over"