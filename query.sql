CREATE DATABASE IF NOT EXISTS test_db;
set global local_infile=true;
USE test_db;
CREATE TABLE IF NOT EXISTS level (Level_id VARCHAR(200),Level VARCHAR(200)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
CREATE TABLE IF NOT EXISTS language (Language_id VARCHAR(200),Language VARCHAR(200)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
CREATE TABLE IF NOT EXISTS subject (Subject_id VARCHAR(200),Subject VARCHAR(200)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
CREATE TABLE IF NOT EXISTS udemy (Course_id VARCHAR(200),Is_paid VARCHAR(200),Price VARCHAR(200),Num_subscribers VARCHAR(200),Num_reviews VARCHAR(200),Num_lectures VARCHAR(200),Level VARCHAR(200),Content_duration VARCHAR(200),Published_timestamp VARCHAR(200),Subject VARCHAR(200),Language VARCHAR(200),Rating VARCHAR(200)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
CREATE TABLE IF NOT EXISTS courses (Course_id VARCHAR(200),Course_title VARCHAR(200)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
CREATE TABLE IF NOT EXISTS is_paid (Is_paid_id VARCHAR(200),Is_paid VARCHAR(200)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'level.csv' INTO TABLE level FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' LINES TERMINATED BY '
' IGNORE 1 LINES (level_id,level);
LOAD DATA INFILE 'language.csv' INTO TABLE language FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' LINES TERMINATED BY '
' IGNORE 1 LINES (language_id,language);
LOAD DATA INFILE 'subject.csv' INTO TABLE subject FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' LINES TERMINATED BY '
' IGNORE 1 LINES (subject_id,subject);
LOAD DATA INFILE 'udemy.csv' INTO TABLE udemy FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' LINES TERMINATED BY '
' IGNORE 1 LINES (course_id,is_paid,price,num_subscribers,num_reviews,num_lectures,level,content_duration,published_timestamp,subject,language,rating);
LOAD DATA INFILE 'courses.csv' INTO TABLE courses FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' LINES TERMINATED BY '
' IGNORE 1 LINES (course_id,course_title);
LOAD DATA INFILE 'is_paid.csv' INTO TABLE is_paid FIELDS TERMINATED BY ',' ENCLOSED BY '' ESCAPED BY '' LINES TERMINATED BY '
' IGNORE 1 LINES (is_paid_id,is_paid);

alter table test_db.courses CHANGE Course_id Course_id INTEGER;
alter TABLE test_db.courses ADD PRIMARY KEY (Course_id);

alter table test_db.is_paid CHANGE Is_paid_id Is_paid_id INTEGER;
alter TABLE test_db.is_paid ADD PRIMARY KEY (Is_paid_id);

alter table test_db.language CHANGE Language_id Language_id INTEGER;
alter TABLE test_db.language ADD PRIMARY KEY (Language_id);

SELECT * from test_db.level;
alter table test_db.level CHANGE Level_id Level_id INTEGER;
alter TABLE test_db.level ADD PRIMARY KEY (Level_id);

alter table test_db.subject CHANGE Subject_id Subject_id INTEGER;
alter TABLE test_db.subject ADD PRIMARY KEY (Subject_id);

alter table test_db.udemy CHANGE Course_id Course_id INTEGER;
alter table test_db.udemy CHANGE Is_Paid Is_Paid INTEGER;
alter table test_db.udemy CHANGE Price Price FLOAT;
alter table test_db.udemy CHANGE Num_Subscribers Num_Subscribers INTEGER;
alter table test_db.udemy CHANGE Num_reviews Num_reviews INTEGER;
alter table test_db.udemy CHANGE Num_lectures Num_lectures INTEGER;
alter table test_db.udemy CHANGE Level Level INTEGER;
alter table test_db.udemy CHANGE Content_duration Content_duration FLOAT;
alter table test_db.udemy CHANGE Published_timestamp Published_timestamp DATE;
alter table test_db.udemy CHANGE Subject Subject INTEGER;
alter table test_db.udemy CHANGE Language Language INTEGER;
alter table test_db.udemy CHANGE Rating Rating FLOAT;

ALTER TABLE test_db.udemy ADD FOREIGN KEY (Course_id) REFERENCES test_db.courses(Course_id);
ALTER TABLE test_db.udemy ADD FOREIGN KEY (Is_Paid) REFERENCES test_db.is_paid(Is_paid_id);
ALTER TABLE test_db.udemy ADD FOREIGN KEY (Level) REFERENCES test_db.level(Level_id);
ALTER TABLE test_db.udemy ADD FOREIGN KEY (Subject) REFERENCES test_db.subject(Subject_id);
ALTER TABLE test_db.udemy ADD FOREIGN KEY (Language) REFERENCES test_db.language(Language_id);
