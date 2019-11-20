select 	*
from console_dates
where 	(MONTH(first_retail_availability) = 12 AND DAY(first_retail_availability) = 24)
		OR
		(
			MONTH(first_retail_availability) = 11 
			AND DAY(first_retail_availability) >= 22 
			AND DAY(first_retail_availability) <= 28
            AND DAYNAME(first_retail_availability) = "Thursday"
		)
