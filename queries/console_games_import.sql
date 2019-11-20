
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/P9-ConsoleGames.csv"
INTO TABLE console_games
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '\"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@Rank, @Name, @Platform, @Year, @Genre, @Publisher, @NA_Sales, @EU_Sales, @JP_Sales, @Other_Sales)
SET
  game_rank   	= (CASE WHEN @Rank='' 			THEN NULL ELSE @Rank 		END),
  name     		= (CASE WHEN @Name='' 			THEN NULL ELSE @Name 		END),
  platform 		= (CASE WHEN @Platform='' 		THEN NULL ELSE @Platform 	END),
  year    		= (CASE WHEN @Year='' 			THEN NULL ELSE @Year 		END),
  genre    		= (CASE WHEN @Genre='' 			THEN NULL ELSE @Genre	 	END),
  publisher    	= (CASE WHEN @Publisher='' 		THEN NULL ELSE @Publisher 	END),
  na_sales    	= (CASE WHEN @NA_Sales='' 		THEN NULL ELSE @NA_Sales 	END),
  eu_sales    	= (CASE WHEN @EU_Sales='' 		THEN NULL ELSE @EU_Sales 	END),
  jp_sales    	= (CASE WHEN @JP_Sales='' 		THEN NULL ELSE @JP_Sales 	END),
  other_sales   = (CASE WHEN @Other_Sales=''	THEN NULL ELSE @Other_Sales END)