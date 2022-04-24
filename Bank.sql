
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `branch` (
	`branch_id`	INTEGER NOT NULL,
	`branch_name`	TEXT DEFAULT NULL,
	PRIMARY KEY (`branch_id`)
);
CREATE TABLE IF NOT EXISTS `branch_add` (
	`branch_id`	INTEGER DEFAULT NULL,
	`city`	TEXT DEFAULT NULL,
	`state`	TEXT DEFAULT NULL,
	FOREIGN KEY (`branch_id`) REFERENCES `branch`(`branch_id`)	
);
CREATE TABLE IF NOT EXISTS `contact` (
	`emp_id`	INTEGER DEFAULT NULL,
	`email`	TEXT DEFAULT NULL,
	`phone`	INTEGER DEFAULT NULL,
	FOREIGN KEY (`emp_id`) REFERENCES `emp`(`emp_id`)
);
CREATE TABLE IF NOT EXISTS `emp` (
	`emp_id`	INTEGER NOT NULL,
	`emp_name`	TEXT DEFAULT NULL,
	`branch_id`	INTEGER DEFAULT NULL,
	`salary`	INTEGER DEFAULT NULL,
	`dept`	TEXT DEFAULT NULL,
	PRIMARY KEY (`emp_id`),
	FOREIGN KEY (`branch_id`) REFERENCES `branch`(`branch_id`)
);
CREATE TABLE IF NOT EXISTS `emp_add` (
	`emp_id`	INTEGER NOT NULL,
	`street`	TEXT DEFAULT NULL,
	`city`	TEXT DEFAULT NULL,
	`state`	TEXT DEFAULT NULL,
	FOREIGN KEY (`emp_id`) REFERENCES `emp`(`emp_id`)
);

INSERT INTO `branch` VALUES (101, 'Sinhgad');
INSERT INTO `branch` VALUES (102, 'Balewadi');
INSERT INTO `branch` VALUES (103, 'Baner');
INSERT INTO `branch` VALUES (104, 'Deccan');
INSERT INTO `branch` VALUES (105, 'Fergusson');

INSERT INTO `branch_add` VALUES (101, 'Pune', 'Maharashtra');
INSERT INTO `branch_add` VALUES (102, 'Mumbai', 'Maharashtra');
INSERT INTO `branch_add` VALUES (103, 'Nasik', 'Maharashtra');
INSERT INTO `branch_add` VALUES (104, 'Delhi', 'Delhi');
INSERT INTO `branch_add` VALUES (105, 'Bhopal', 'Maharashtra');

INSERT INTO `contact` VALUES (105, 'Bhopal', 'Maharashtra');
INSERT INTO `contact` VALUES (1, 'seema11@gmail.com', 9373638291);
INSERT INTO `contact` VALUES (2, 'anil22@gmail.com', 9334434291);
INSERT INTO `contact` VALUES (3, 'shikha@gmail.com', 8373623455);
INSERT INTO `contact` VALUES (4, 'riya@gmail.com', 7667363829);
INSERT INTO `contact` VALUES (5, 'priya37@gmail.com', 7366363291);

INSERT INTO `emp` VALUES (1, 'Seema', 101, 10000, 'IT');
INSERT INTO `emp` VALUES (2, 'Anil', 102, 20000, 'DB');
INSERT INTO `emp` VALUES (3, 'Shikha', 102, 20000, 'IT');
INSERT INTO `emp` VALUES (4, 'Riya', 103, 10003, 'FrontEnd');
INSERT INTO `emp` VALUES (5, 'John', 104, 45666, 'DB');

INSERT INTO `emp_add` VALUES (1, 'A', 'Nagpur', 'Maharashtra');
INSERT INTO `emp_add` VALUES (2, 'A1', 'Bhopal', 'Madhya Pradesh');
INSERT INTO `emp_add` VALUES (3, 'B', 'Indore', 'Madhya Pradesh');
INSERT INTO `emp_add` VALUES (4, 'B1', 'Pune', 'Maharashtra');
INSERT INTO `emp_add` VALUES (5, 'A2', 'Mumbai', 'Maharashtra');

COMMIT;
