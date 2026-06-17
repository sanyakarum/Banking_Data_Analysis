CREATE DATABASE Banking_Domain;
USE Banking_Domain;

SELECT * FROM Bank;
SELECT * FROM bank LIMIT 20;

SHOW COLUMNS FROM bank;

-- Q1.Which customer segments or occupation generate the highest total deposits?

SELECT Occupation, ROUND(SUM(`Bank Deposits`),2) AS total_deposits
FROM bank
GROUP BY Occupation
ORDER BY total_deposits DESC;

-- Q2.What is the average income and average deposit by loyalty classification?
SELECT ROUND(AVG(`Estimated Income`),2) AS Avg_income,ROUND(AVG(`Bank Deposits`),2) AS Avg_deposit, `Loyalty Classification`
FROM bank
GROUP BY `Loyalty Classification`;

-- Q3.Which occupations have the highest loan-to-income ratio?
SELECT occupation, ROUND(AVG(`Bank Loans`),2) AS avg_loan, ROUND(AVG(`Estimated Income`),2) AS 	avg_income,
ROUND(AVG(`Bank Loans`) / AVG(`Estimated Income`),2) AS loan_income_ratio
FROM bank
GROUP BY occupation
ORDER BY loan_income_ratio DESC;

-- Q4.Top 10 customers by total banking relationship value(TRV)
SELECT
    `Client ID`,
    Name,
    ROUND(
        COALESCE(`Bank Deposits`,0) +
        COALESCE(`Saving Accounts`,0) +
        COALESCE(`Checking Accounts`,0) +
        COALESCE(`Foreign Currency Account`,0) +
        COALESCE(`Superannuation Savings`,0) +
        COALESCE(`Credit Card Balance`,0) +
        COALESCE(`Business Lending`,0)
    ,2) AS relationship_value
FROM bank
ORDER BY relationship_value DESC
LIMIT 10;

-- Q5.Which age group holds the highest deposits?
SELECT 
	CASE
		WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '60+'
	END AS Age_group,
	ROUND(SUM(`Bank Deposits`),2) AS total_deposit
FROM bank
GROUP BY Age_group
ORDER BY total_deposit DESC ;

-- Q6.What is the average credit card balance by fee structure?
SELECT `Fee Structure` , AVG(`Credit Card Balance`) AS avg_credit_balance
FROM bank
GROUP BY  `Fee Structure`
ORDER BY avg_credit_balance DESC;

-- Q7.Which banking relationship types manage the highest deposits?
SELECT BRId, ROUND(SUM(`Bank Deposits`),2) AS total_deposit
FROM bank
GROUP BY BRId
ORDER BY total_deposit DESC;

-- Q8.Find customers with high income but low deposits
SELECT `Client ID`,Name,`Estimated Income`,`Bank Deposits`
FROM bank
WHERE `Estimated Income` >
      (SELECT AVG(`Estimated Income`) FROM bank)
AND `Bank Deposits` <
      (SELECT AVG(`Bank Deposits`) FROM bank);
      
-- Q9.Which nationality contributes the highest banking deposits?
SELECT Nationality, ROUND(SUM(`Bank Deposits`),2) AS total_deposit
FROM bank
GROUP BY Nationality
ORDER BY  total_deposit DESC;

-- Q10.Rank customers by deposits within each loyalty segment
SELECT `Client ID`,Name,`Loyalty Classification`,`Bank Deposits`,
    RANK() OVER(
        PARTITION BY `Loyalty Classification`
        ORDER BY `Bank Deposits` DESC
    ) AS deposit_rank
FROM bank;

-- Q11.Which customers have more loans than deposits?
SELECT `Client ID`, name ,`Bank Deposits`,`Bank Loans` 
FROM bank
WHERE `Bank Deposits` < `Bank Loans` ;

-- Q12.What is the average number of credit cards by age group?
SELECT 
	CASE
		WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 40 THEN '30-40'
        WHEN Age BETWEEN 41 AND 50 THEN '41-50'
        WHEN Age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '60+'
	END AS Age_group,
	ROUND(avg(`Amount of Credit Cards`),2) AS avg_cards
FROM bank
GROUP BY Age_group;
	
 -- Q13.Identify high-net-worth customers       
SELECT `Client ID`,Name,`Estimated Income`,`Bank Deposits`
FROM bank
WHERE `Estimated Income` >
      (SELECT AVG(`Estimated Income`) FROM bank)
AND `Bank Deposits` >
      (SELECT AVG(`Bank Deposits`) FROM bank);
      
-- Q14.Which occupations own the most properties?
SELECT occupation, SUM(`Properties Owned`) AS total_properties
FROM BANK
GROUP BY occupation
ORDER BY total_properties DESC;

-- Q15.Customer Risk vs Deposit Analysis
SELECT
    `Risk Weighting`,
    COUNT(*) AS customers,
    ROUND(AVG(`Bank Deposits`),2) AS avg_deposits,
    ROUND(AVG(`Bank Loans`),2) AS avg_loans
FROM bank
GROUP BY `Risk Weighting`
ORDER BY `Risk Weighting`;

 