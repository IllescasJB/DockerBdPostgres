#!/bin/bash
bd_name=$1 
dropdb -U postgres --if-exists --force $bd_name
createdb -U postgres $bd_name
psql -U postgres -p 5432  -d $bd_name -f /tmp/unitTesting_BD.sql  