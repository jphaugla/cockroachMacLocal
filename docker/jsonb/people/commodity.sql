CREATE TABLE commodity (id varchar(10), data jsonb);
INSERT INTO commodity (id, data) values ('silver', '{"prices" : [ { "05/01/2022" : 100.5 } , { "06/01/2022" : 101.5 } ]}');
INSERT INTO commodity (id, data) values ('gold', '{"prices" : [ { "05/01/2022" : 200.5 } , { "06/01/2022" : 211.5 } ]}');
SELECT * FROM commodity;
