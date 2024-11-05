CREATE TABLE student_profiles (
    id STRING PRIMARY KEY AS (profile->>'id') STORED,
    profile JSONB
);
ALTER TABLE student_profiles ADD COLUMN age INT AS ( (profile->>'age')::INT) STORED;
INSERT INTO student_profiles (profile) VALUES
    ('{"id": "d78236", "name": "Arthur Read", "age": "16", "school": "PVPHS", "credits": 120, "sports": "none"}'),
    ('{"name": "Buster Bunny", "age": "15", "id": "f98112", "school": "THS", "credits": 67, "clubs": "MUN"}'),
    ('{"name": "Ernie Narayan", "school" : "Brooklyn Tech", "id": "t63512", "sports": "Track and Field", "clubs": "Chess"}');
