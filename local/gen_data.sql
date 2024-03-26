drop table foo;
create table foo( id int64 primary key, name string, data float8);
INSERT INTO foo(id, name, data) SELECT i, 'name'||i, random() FROM generate_series(1,1000) i;
