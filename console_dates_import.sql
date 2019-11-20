
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/P9-ConsoleDates.csv"
INTO TABLE console_dates
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@Platform, @FirstRetailAvailability, @Discontinued, @UnitsSoldMillions, @Comment)
SET
  platform   = 					(CASE WHEN @Platform='' THEN NULL ELSE @Platform END),
  first_retail_availability = 	(CASE WHEN @FirstRetailAvailability='' THEN NULL ELSE @FirstRetailAvailability END),
  discontinued   = 				(CASE WHEN @Discontinued='' THEN NULL ELSE @Discontinued END),
  units_sold_millions    = 		(CASE WHEN @UnitsSoldMillions='' THEN NULL ELSE @UnitsSoldMillions END),
  comment    = 					(CASE WHEN @Comment='' THEN NULL ELSE @Comment END)