
---Use A particular Database--
use [Employee Data]

SELECT * FROM Employee_Data;

---divide ppl who are working in R&D 
select *  from Employee_Data
where Department='Research & Development';

-----ppl who travel rarely and above age 30--
select*from Employee_Data
where BusinessTravel='Travel_Rarely' And Age>40;

---count ppl who are female and married--
select EmployeeNumber,Age from Employee_Data
where Gender='Female' And MaritalStatus='Married';

----Sort by salary(Descending order)--
select EmployeeNumber,JobRole,MonthlyIncome from Employee_Data
Where Department='Sales'
Order By MonthlyIncome DESC;


---- Attrition with distance---
SELECT JobRole,Attrition,
    AVG(DistanceFromHome) AS AvgDistance,
    MIN(DistanceFromHome) AS MinDistance,
    MAX(DistanceFromHome) AS MaxDistance
FROM Employee_Data
GROUP BY JobRole, Attrition
ORDER BY JobRole, Attrition;

----people with min salary---
SELECT JobRole, Attrition,
    MIN(MonthlyIncome) AS MinSalary
FROM Employee_Data
GROUP BY JobRole, Attrition
ORDER BY JobRole, Attrition;


----ppl left bcoz of low salary or not--
SELECT 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN 'Mid Income'
        ELSE 'High Income'
    END AS IncomeGroup,
    COUNT(CASE WHEN Attrition = 1 THEN 1 END) AS LeftEmployees,
    COUNT(CASE WHEN Attrition = 0 THEN 1 END) AS StayedEmployees,
    ROUND(
        100.0 * COUNT(CASE WHEN Attrition = 1 THEN 1 END) / COUNT(*),
        2
    ) AS AttritionRate
FROM Employee_Data
GROUP BY 
    CASE 
        WHEN MonthlyIncome < 3000 THEN 'Low Income'
        WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN 'Mid Income'
        ELSE 'High Income'
    END
ORDER BY IncomeGroup;

----compare monthly avg income by education---
SELECT 
    EmployeeNumber,
    ROUND(AVG(MonthlyIncome), 2) AS AvgSalary,
    COUNT(*) AS EmployeeCount
FROM Employee_Data 
GROUP BY EmployeeNumber;
