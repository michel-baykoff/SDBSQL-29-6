create user 'replication_user'@'%';
grant replication slave on *.* to 'replication_user'@'%';
show grants for 'replication_user'@'%';
show master status;
