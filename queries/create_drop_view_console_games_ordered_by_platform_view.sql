DROP VIEW IF EXISTS console_games_ordered_by_platform_name;

CREATE OR REPLACE VIEW console_games_ordered_by_platform_name AS 
	SELECT name
	FROM console_games
    ORDER BY platform, year DESC 
WITH CHECK OPTION ;
