WITH hotels AS (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

--SELECT 
--	arrival_date_year,
--	hotel,
--	ROUND(sum((stays_in_week_nights + stays_in_weekend_nights)* adr),2) AS revenue
--FROM hotels
--GROUP BY 
--	arrival_date_year,
--	hotel

SELECT * 
FROM 
	hotels
		LEFT JOIN
	market_segment$ ms ON hotels.market_segment = ms.market_segment
		LEFT JOIN
	meal_cost$ mc ON hotels.meal = mc.meal
