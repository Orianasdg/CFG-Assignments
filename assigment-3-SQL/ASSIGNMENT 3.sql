-- CREATE DATABASE primary_4th_children;
-- USE primary_4th_children;

-- Here I am creating a table for Basic information of the children of Primary 4. 
-- CREATE TABLE children_Info (
			 -- child_id INT AUTO_INCREMENT PRIMARY KEY,
             -- class_number INT NOT NULL,
             -- first_name VARCHAR(50) NOT NULL,
             -- last_name VARCHAR(50) NOT NULL,
             -- classroom INT NOT NULL,
             -- teacher_name VARCHAR(50) NOT NULL,
    -- UNIQUE KEY unique_name (first_name, last_name)
    -- );

-- Here I am creating a table for the parents information, PC is for primary contact and ec for emergency contact.
-- CREATE TABLE parents_Info (
    -- parent_id INT AUTO_INCREMENT PRIMARY KEY,
    -- child_id INT,
    -- PC_firstname VARCHAR(50) NOT NULL,
    -- PC_lastname VARCHAR(50) NOT NULL,
    -- PC_mobilenumber VARCHAR(15) NOT NULL,
    -- EC_firstname VARCHAR(50),
    -- EC_lastname VARCHAR(50),
    -- EC_mobilenumber VARCHAR(15),
    -- CONSTRAINT fk_child_id FOREIGN KEY (child_id) REFERENCES children_Info(child_id)
-- );

-- This table will contain the emergency information of the children. 
-- CREATE TABLE emergency_Info (
    -- emergency_id INT AUTO_INCREMENT PRIMARY KEY,
    -- child_id INT,
    -- GP_name VARCHAR(50) NOT NULL,
    -- GP_phonenumber VARCHAR(15) NOT NULL,
    -- allergies VARCHAR(50),
    -- dietary_requirements VARCHAR(50),
    -- CONSTRAINT fk_emergency_child_id FOREIGN KEY (child_id) REFERENCES children_Info(child_id)
-- );

-- Here I am populating the children's table 
-- INSERT INTO children_Info (class_number, first_name, last_name, classroom, teacher_name)
-- VALUES
-- ("1", 'Alice', 'Smith', 11, 'Mrs. Johnson'),
-- ("2", 'Bob', 'Brown', 10, 'Mr. Davis'),
-- ("1", 'Emma', 'Lee', 10, 'Mrs. Johnson'),
-- ("2", 'Jack', 'White', 11, 'Mr. Davis'),
-- ("1", 'Olivia', 'Garcia', 10, 'Mrs. Johnson'),
-- ("2", 'Liam', 'Martinez', 11, 'Mr. Davis'),
-- ("1", 'Sophia', 'Lopez', 10, 'Mrs. Johnson'),
-- ("2", 'Noah', 'King', 11, 'Mr. Davis');

-- Here I am populating the parent's table 
-- INSERT INTO parents_Info (child_id, PC_firstname, PC_lastname, PC_mobilenumber, EC_firstname, EC_lastname, EC_mobilenumber)
-- VALUES
-- (1, 'Emily', 'Smith', '07895412365', 'John', 'Smith', '0752145513'),
-- (2, 'Michael', 'Brown', '07462093535', 'Jessica', 'Brown', '07412036521'),
-- (3, 'David', 'Lee', '07521635498', NULL, NULL, NULL),
-- (4, 'Sophie', 'White', '07463296589', 'Noah', 'White', '07452103269'),
-- (5, 'Daniela', 'Garcia', '07412365214', 'Manuel', 'Garcia', '07410236521'),
-- (6, 'Matias', 'Martinez', '07951236052', 'Ava', 'Martinez', '07410236521'),
-- (7, 'Mia', 'Lopez', '075213659825', 'Christopher', 'Lopez', '07485963625'),
-- (8, 'Olivia', 'King', '07852136549', NULL, NULL, NULL);

-- Here I am populating the emergency information table 
-- INSERT INTO emergency_Info (child_id, GP_name, GP_phonenumber, allergies, dietary_requirements)
-- VALUES
-- (1, 'Dr. Johnson', '07485963256', 'Peanuts', 'Vegetarian'),
-- (2, 'Dr. Smith', '07412012365', NULL, 'None'),
-- (3, 'Dr. Taylor', '07485102365', 'None', 'Gluten-free'),
-- (4, 'Dr. White', '07852102302', 'Penicillin', 'None'),
-- (5, 'Dr. Diaz', '07574767879', NULL, 'None'),
-- (6, 'Dr. Martinez', '07010402050', 'None', 'None'),
-- (7, 'Dr. Gomez', '07852136954', 'Shellfish', 'None'),
-- (8, 'Dr. King', '07896521456', NULL, 'None');

-- I am here generating all children's information sorted by last name
-- SELECT * FROM children_Info ORDER BY last_name;

-- I am here generating all parent's information from children in classroom 10
-- SELECT p.*, c.first_name, c.last_name
-- FROM parents_Info p
-- JOIN children_Info c ON p.child_id = c.child_id
-- WHERE c.classroom = 10;

-- here I am calculating the average number of characters in the children's first name
-- SELECT AVG(LENGTH(first_name)) AS avg_name_length
-- FROM children_Info;

-- here I deleted the mergency contact information for the child with 5 as ID, 
-- DELETE FROM emergency_Info WHERE child_id = 5;

-- Here I am converting teacher names to uppercase
-- SELECT first_name, last_name, UPPER(teacher_name) AS uppercase_teacher
-- FROM children_Info;


-- here I am creating and using a store procedure  to achieve a goal. 
-- DELIMITER //

-- CREATE PROCEDURE DeleteParentByChildID(IN child_id_param INT)
-- BEGIN
    -- DELETE FROM parents_Info WHERE child_id = child_id_param;
-- END//

-- DELIMITER ;
-- here I am calling the stored procedure to delete parents_Info for child ID 3
-- CALL DeleteParentByChildID(3);

