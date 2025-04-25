SELECT Gender, count(Gender) as Total_Count,
Count(Gender) * 100.0/ (SELECT Count(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Gender

SELECT Contract, count(Contract) as Total_Count,
Count(Contract) * 100.0/ (SELECT Count(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Contract


SELECT Customer_Status, count(Customer_Status) as Total_Count, SUM(Total_Revenue) as TotalRev,
SUM(Total_Revenue) * 100.0/ (SELECT SUM(Total_Revenue) FROM stg_Churn) as RevPercentage
FROM stg_Churn
GROUP BY Customer_Status

SELECT State, count(State) as Total_Count,
COUNT(State) * 100.0/ (SELECT Count(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY State
ORDER BY Percentage DESC

SELECT DISTINCT Internet_Type
FROM stg_Churn

