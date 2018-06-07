#!/bin/bash 
DB_USER='root';
DB_PASSWD='root123';

DB_NAME='lrt_mfstats';
TABLE='20180507_tfp_gaps_index';


#mysql commands

while true

do

mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME -e "INSERT INTO $TABLE VALUES (NOW(),'SUPERMARKET','ITEMS',5627,9736,878),(NOW(),'RICE','VEGGIES',432,3,423)"

mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME -e "DO SLEEP(15)"

mysql --user=$DB_USER --password=$DB_PASSWD $DB_NAME -e  "INSERT INTO $TABLE VALUES (NOW(),'CHEESE','EGGS',5627,9736,878)"


done

