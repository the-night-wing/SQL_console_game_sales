SELECT 	ROUND(
			SUM(na_sales) * 100 / 
			( SUM(na_sales) + SUM(eu_sales) + SUM(jp_sales) + SUM(other_sales) )
            ,2
			) AS NA_Sales
FROM console_games