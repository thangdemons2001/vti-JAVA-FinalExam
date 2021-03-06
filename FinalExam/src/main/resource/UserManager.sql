/*============================== CREATE DATABASE =======================================*/
/*======================================================================================*/

DROP DATABASE IF EXISTS UserManager;
CREATE DATABASE UserManager;
USE UserManager;

/*============================== CREATE TABLE =======================================*/
/*======================================================================================*/

-- create table 1: Department  id, FullName, Email, Password
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User`(
	UserID 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	FullName 	VARCHAR(50) UNIQUE KEY NOT NULL,
    Email 		VARCHAR(50) UNIQUE KEY NOT NULL,
    `Password`	VARCHAR(50) NOT NULL CHECK(length(`Password`) >= 6),
    `Role`		ENUM('User', 'Manager', 'Employee')
);
DROP TABLE IF EXISTS `Project`;
CREATE TABLE `Project`(
	projecID 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	teamSize		INT UNSIGNED,
    idManager		TINYINT UNSIGNED,
    FOREIGN KEY (idManager) references `User`(UserID)
);
DROP TABLE IF EXISTS `ProjectInfo`;
CREATE TABLE `ProjectInfo`(
	employeeID		TINYINT UNSIGNED PRIMARY KEY,
	projectID 		TINYINT UNSIGNED,
    FOREIGN KEY (employeeID) references `User`(UserID)
);
/*============================== INSERT DATABASE =======================================*/
/*======================================================================================*/

INSERT INTO `User`  (UserID   , FullName, 			Email,				 `Password`,			`Role`		) 
VALUES
					(1,			N'Nguyễn Thị Mỵ',	'mynt2407@gmail.com', 'Mynguyen123',		'User'	),
					(2,			N'Nguyễn Ngọc Duy',	'duynn03@gmail.com', 'duyNguyen',			'Manager'	),
                    (3,			N'Nguyễn Hùng Mạnh','hungmanh@gmail.com', 'hunGmanh1',			'Manager'	),
                    (4,			N'Tống Thị Nhung',	'nhung@gmail.com', 		'nhungtOng',		'User'	),
                    (5,			N'Nguyen Duc Thang','bibothang1@gmail.com', 	'Thang123',			'Manager'	),
                    (6,			N'Nguyen Duc Thang1','bibothang2@gmail.com', 	'Thang123',			'Employee'	),
                    (7,			N'Nguyen Duc Thang2','bibothang3@gmail.com', 	'Thang123',			'Employee'	),
                    (8,			N'Nguyen Duc Thang3','bibothang4@gmail.com', 	'Thang123',			'Employee'	),
                    (9,			N'Nguyen Duc Thang4','bibothang5@gmail.com', 	'Thang123',			'Employee'	),
                    (10,			N'Nguyen Duc Thang5','bibothang6@gmail.com', 	'Thang123',			'Employee'	),
                    (11,			N'Nguyen Duc Thang6','bibothang7@gmail.com', 	'Thang123',			'Employee'	),
                    (12,			N'Nguyen Duc Thang7','bibothang8@gmail.com', 	'Thang123',			'Employee'	),
                    (13,			N'Nguyen Duc Thang8','bibothang9@gmail.com', 	'Thang123',			'User'	),
                    (14,			N'Nguyen Duc Thang9','bibothang10@gmail.com', 	'Thang123',			'Manager'	),
                    (15,			N'Nguyen Duc Thang10','bibothang11@gmail.com', 	'Thang123',			'User'	),
                    (16,			N'Nguyen Duc Thang11','bibothang12@gmail.com', 	'Thang123',			'User'	),
                    (17,			N'Trần Thị Kim Anh','kimoanh.tran@gmail.com', 'tran.kim',		'User'	);
INSERT INTO `usermanager`.`project` (`projecID`, `teamSize`, `idManager`)
VALUES 								('1', '3', '2'),
									('2', '4', '5'),
									('3', '2', '3');
									
INSERT INTO `usermanager`.`ProjectInfo` (`employeeID`, `projectID`)
VALUES 									('7', '2'),
										('8', '2'),
                                        ('6', '2'),
                                        ('5', '2'),
                                        ('12', '1'),
                                        ('11', '1'),
                                        ('2', '1'),
                                        ('3', '3'),
                                        ('9', '3');
