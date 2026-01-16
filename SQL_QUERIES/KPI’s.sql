--select * from Bank_loan_data

--KPI’s:
--Total Loan Applications
select count(id) as Total_Loan_Applications from Bank_loan_data

--MTD Loan Applications
SELECT COUNT(id) AS MTD_Total_Loan__Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12

--PMTD Loan Applications
SELECT COUNT(id) AS PMTD_Total_Loan__Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11

--PMTD Loan applications with month and year
SELECT SUM(loan_amount) AS PMTD_Total_loan_applications_mon_year FROM Bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date)=2021




--Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data

--MTD Total Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12

--PMTD Total Funded Amount
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11




--Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
 
--MTD Total Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 12
 
--PMTD Total Amount Received
SELECT SUM(total_payment) AS PMTD_Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 11



--Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM bank_loan_data

--MTD Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12

--PMTD Average Interest
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11



--Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data


--MTD Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12


--PMTD Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11	

