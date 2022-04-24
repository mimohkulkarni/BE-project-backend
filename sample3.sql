BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `students` (
	`name`	TEXT NOT NULL,
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`marks`	INTEGER
);
INSERT INTO `students` VALUES ('Kshitij Ingole',1,45);
INSERT INTO `students` VALUES ('Aakash Patil',2,43);
INSERT INTO `students` VALUES ('Kalyani Kshirsagar',3,47);
INSERT INTO `students` VALUES ('Pratiksha Bothara',4,60);
INSERT INTO `students` VALUES ('Shravan Ramdurg',5,56);
COMMIT;
