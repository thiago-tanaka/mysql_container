##!/bin/bash

echo "Inform the database name:"

read database_name

add_privileges_command="GRANT ALL PRIVILEGES ON $database_name.* TO 'mysql_user'@'%'; FLUSH PRIVILEGES;"
create_database_command="CREATE DATABASE $database_name;"

docker exec mysql bash -c "mysql -uroot -pmysql_password -e \"$add_privileges_command $create_database_command\""