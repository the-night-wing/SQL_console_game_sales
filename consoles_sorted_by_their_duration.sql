SELECT * 
FROM console_dates
ORDER BY DATEDIFF(IFNULL(discontinued, NOW()), first_retail_availability)

