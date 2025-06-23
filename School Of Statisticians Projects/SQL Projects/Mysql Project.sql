##selection of name and email of users
	SELECT 
		name, email
	FROM
		mysql_data;
##select user with Id 50
SELECT
	*
FROM
	mysql_data
WHERE
    id=50;
##Retrieve users who were created after January 1, 2022
SELECT
	*
FROM
	mysql_data
WHERE
	created_at> "01-01-2022";
##Filtering and Conditions
##Retrieve all users who are older than 40
SELECT
	*
FROM
	mysql_data
WHERE
	age>40;
##Find users whose email contains "user10"
SELECT
	*
FROM
	mysql_data
WHERE
	email LIKE "user10%"
  AND name= "User_10";
## users whose created_at date falls in 2021
SELECT
	*
FROM
	mysql_data
WHERE YEAR(created_at)=2021;
##users between the ages of 25 and 35
SELECT
	*
FROM
	mysql_data
WHERE age BETWEEN 25 AND 35;
##Aggregations & Sorting
##Count the total number of users in the database.
SELECT 
COUNT(*) AS total_users
FROM 
mysql_data;
##average age of all users
SELECT
AVG(age) AS average_age
FROM
mysql_data;
##Identify the youngest and oldest users.
SELECT 
MIN(age) AS youngest
FROM
 mysql_data
UNION 
SELECT MAX(age) AS oldest
FROM
mysql_data;
##Retrieve the five most recently created users.
SELECT
* 
FROM mysql_data
 ORDER BY 
 created_at DESC LIMIT 5;
##Data Manipulation
UPDATE 
mysql_data 
SET email = "newemail@example.com" 
WHERE id = 75;

SELECT 
* 
FROM 
mysql_data 
WHERE id = 75;
##Increase the age of all users by 1 year
UPDATE 
mysql_data
SET 
age = age + 1;
SELECT 
* 
FROM 
mysql_data; 
##Delete users who are younger than 20 years old.
DELETE 
FROM 
mysql_data
WHERE 
age < 20;
##Add a new column phone_number to store users’ phone numbers.
ALTER TABLE 
mysql_data 
ADD COLUMN 
phone_number VARCHAR(20);
##Advanced Queries
##Find the top 5 oldest users in the database
SELECT 
* 
FROM 
mysql_data 
ORDER BY 
age 
DESC LIMIT 5;
##users whose name starts with "User_5"
SELECT 
* 
FROM 
mysql_data 
WHERE 
name LIKE 'User_5%';
##how many users were created each year.
SELECT YEAR
(created_at) 
AS year, 
COUNT(*) AS total_users 
FROM 
mysql_data 
GROUP BY YEAR(created_at);
##total number of users in each age group
SELECT age, 
COUNT(*) AS total_users 
FROM 
mysql_data 
GROUP BY 
age 
ORDER BY 
age;


       