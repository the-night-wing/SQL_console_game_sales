ALTER TABLE console_dates 
    MODIFY COLUMN units_sold_millions DECIMAL(9,2) DEFAULT 0,
    MODIFY COLUMN discontinued DATE DEFAULT NULL
    ;