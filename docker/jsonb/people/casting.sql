SELECT '100'::JSONB::INT;
SELECT '100000'::JSONB::FLOAT;
SELECT '100.50'::JSONB::DECIMAL;
SELECT parse_timestamp ('2022-05-28T10:53:25.160Z');
CREATE TABLE events (
  raw JSONB,
  event_created TIMESTAMP AS (parse_timestamp(raw->'event'->>'created')) VIRTUAL
);
INSERT INTO events (raw) VALUES ('{"event":{"created":"2022-05-28T10:53:25.160Z"}}');
SELECT event_created FROM events;
