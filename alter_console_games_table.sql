ALTER TABLE console_games 
	AUTO_INCREMENT = 1 ,
	MODIFY COLUMN  name						VARCHAR(255),
	MODIFY COLUMN  platform					VARCHAR(50),
	MODIFY COLUMN  year 					VARCHAR(50),
	MODIFY COLUMN  genre					VARCHAR(50)	 DEFAULT "",
	MODIFY COLUMN  publisher				VARCHAR(255),
    MODIFY COLUMN na_sales					DECIMAL(9,2) DEFAULT 0,
    MODIFY COLUMN eu_sales					DECIMAL(9,2) DEFAULT 0,
    MODIFY COLUMN jp_sales					DECIMAL(9,2) DEFAULT 0,
    MODIFY COLUMN other_sales				DECIMAL(9,2) DEFAULT 0,
	ADD COLUMN game_rank 					VARCHAR(255) 			AFTER game_id
    ;