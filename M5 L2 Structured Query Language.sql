USE fitness_center_db;

SELECT * FROM fitness_center_db.members;
SELECT * FROM fitness_center_db.workoutsessions;

-- Task 1
CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO members (name, age)
VALUES ('Jane Doe', 33),
	   ('Kent Brennan', 37),
       ('Grace Milton', 21),
       ('Dennis Jeng', 47),
       ('Marcus Grant', 26);
       
INSERT INTO workoutsessions (member_id, session_date, session_time, activity)
VALUES (1, '2024-03-12', '8:30-9:15 AM', 'Core strength, Leg strength, Cardio'),
	   (2, '2023-10-22', '4:00-5:00 AM', 'Wellness training, Core, Cardio'),
       (3, '2023-12-17', '2:30-3:15 PM', 'Wellness training'),
       (4, '2024-06-03', '7:30-8:30 AM', 'Quads, Biceps, Triceps, Cardio'),
       (5, '2024-06-04', '9:00-10:00 AM', 'Wellnes training, Quads, Hamstrings, Back');

-- Task 2       
UPDATE workoutsessions
SET session_time = '9:30-10:15'
WHERE member_id = 1;

-- Task 3
DELETE FROM workoutsessions
WHERE member_id = 2;

DELETE FROM members
WHERE id = 2;

