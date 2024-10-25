use fitness_center_db;
SELECT * FROM members;
SELECT * FROM workoutsessions;

DELETE FROM workoutsessions
WHERE member_id = 3;

DELETE FROM members
WHERE id = 3;