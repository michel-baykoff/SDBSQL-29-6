-- target to master
CHANGE MASTER TO
MASTER_HOST='mysql-master',
MASTER_USER='replication_user',
MASTER_LOG_FILE='mysql-bin.000003',
MASTER_LOG_POS=616;
-- starting replica
START REPLICA;
-- wait a bit
do sleep(5);
-- show status
SHOW SLAVE STATUS\G
