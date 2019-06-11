CREATE DATABASE jones_game_lib;

/*======  CREATE MANUFACTURER TABLE ID(100)======*/

CREATE TABLE tbl_mfr (
	mfr_id INT PRIMARY KEY not null IDENTITY (100,1),
	mfr_name VARCHAR(15) NOT NULL
);

INSERT INTO tbl_mfr
	(mfr_name)
	VALUES
	('Nintendo'),
	('Microsoft'),
	('Sony'),
	('Sega')
;

/*======  CREATE CONSOLE TABLE ID(200)======*/

CREATE TABLE tbl_console(
	console_id INT PRIMARY KEY NOT NULL IDENTITY (200,1),
	console_mfr INT CONSTRAINT fk_console_mfr FOREIGN KEY REFERENCES tbl_mfr(mfr_id) ON UPDATE CASCADE ON DELETE CASCADE,
	console_name VARCHAR(20) NOT NULL
);
	/*======  INSERT SYSTEMS OVER THE YEARS AS VALUES ======*/

INSERT INTO tbl_console
	(console_mfr, console_name)
	VALUES
	(100, 'NES'),
	(100, 'SNES'),
	(100, 'N64'),
	(100, 'GC'),
	(100, 'Wii'),
	(100, 'WiiU'),
	(100, 'Switch'),
	(101, 'xb'),
	(101, 'xb360'),
	(101, 'xb1'),
	(102, 'psx'),
	(102, 'ps2'),
	(102, 'ps3'),
	(102, 'ps4'),
	(102, 'psp'),
	(102, 'psvita'),
	(102, 'psvr'),
	(103, 'genesis'),
	(103, 'cd'),
	(103, 'saturn'),
	(103, 'dreamcast')
;

SELECT
	tm.mfr_name AS 'Manufacturer Name:', tc.console_name AS 'Console Name:'
	FROM tbl_console tc
	INNER JOIN tbl_mfr tm ON tm.mfr_id = tc.console_mfr
	WHERE mfr_name = 'Sega'
;