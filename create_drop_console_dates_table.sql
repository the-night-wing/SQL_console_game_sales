DROP TABLE IF EXISTS console_dates;
CREATE TABLE IF NOT EXISTS console_dates(
	console_id					SMALLINT PRIMARY KEY AUTO_INCREMENT,
    platform					VARCHAR(50) NOT NULL UNIQUE, 
    first_retail_availability	DATE NOT NULL DEFAULT "2020-01-01",
    discontinued				DATE ,
    units_sold_millions			SMALLINT NOT NULL DEFAULT 0,	
    comment						VARCHAR(255) NOT NULL DEFAULT ""
);
