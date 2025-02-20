show databases;
show ranges from database movr_rides with tables, details;
show regions from cluster;
SHOW ZONE CONFIGURATION FROM DATABASE movr_users;
# this matches the old output in the university course for show ranges from database movr_rides
select table_name, table_start_key, table_end_key, range_id, lease_holder, lease_holder_locality, replicas, replica_localities from [show ranges from database movr_rides with tables, details];
# add the voting and not_voting_replicas
select table_name, table_start_key, table_end_key, range_id, lease_holder, lease_holder_locality, replicas, voting_replicas, non_voting_replicas, replica_localities from [show ranges from database movr_rides with tables, details];
select lease_holder_locality, array_agg(range_id) from [show ranges from database movr_rides with details] group by lease_holder_locality;
alter database movr_rides primary region "us-east";
alter database movr_rides add region "us-central";
alter database movr_rides add region "us-west";
