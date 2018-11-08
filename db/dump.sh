#!/bin/bash

echo "start"

# mysqldump -uroot -proot -P 3307  -h 47.96.123.41 ghost >dump_ghost.sql

mysqldump -uroot -proot -P 3307  -h 47.96.123.41 yellow_page >dump_gallery.sql

mysqldump -uroot -proot -P 3307  -h 47.96.123.41 wordpress >dump_wordpress.sql


echo "over"