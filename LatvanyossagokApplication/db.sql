﻿CREATE TABLE IF NOT EXISTS varosok(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nev VARCHAR(100) NOT NULL UNIQUE,
	lakossag INT NOT NULL	
);

CREATE TABLE IF NOT EXISTS latvanyossagok(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nev VARCHAR(100) NOT NULL,
	leiras VARCHAR(1000) NOT NULL,
	ar INT NOT NULl DEFAULT 0,
	varos_id INT NOT NULl,
	FOREIGN KEY (varos_id) REFERENCES varosok(id)
);
