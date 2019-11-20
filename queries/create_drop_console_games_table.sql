DROP TABLE IF EXISTS console_games;
CREATE TABLE IF NOT EXISTS console_games(
	game_id						INT PRIMARY KEY AUTO_INCREMENT,
    name						VARCHAR(255) NOT NULL,
    platform					VARCHAR(50) NOT NULL ,
    year						DATE NOT NULL,
    genre						VARCHAR(50) NOT NULL DEFAULT "",
    publisher					VARCHAR(255) NOT NULL,
    na_sales					DECIMAL(9,2) DEFAULT NULL,
    eu_sales					DECIMAL(9,2) DEFAULT NULL,
    jp_sales					DECIMAL(9,2) DEFAULT NULL,
    other_sales					DECIMAL(9,2) DEFAULT NULL
);
