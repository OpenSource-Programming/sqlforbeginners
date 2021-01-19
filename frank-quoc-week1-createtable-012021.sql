CREATE TABLE student (
    student_id INT, 
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

DESCRIBE student; # gives us stats on the table

DROP TABLE student; # deletes the table

ALTER TABLE student ADD gpa DECIMAL(3, 2); # adds a col

ALTER TABLE student DROP COLUMN gpa; # Deletes a column