USE COUNTRY_DB;
SELECT * FROM PERSONS;
UPDATE PERSONS SET RATING = 5 WHERE ID=567;

#1. Find the number of persons in each country.
SELECT COUNTRY_NAME, COUNT(ID) AS NO_OF_PERSONS FROM PERSONS GROUP BY COUNTRY_NAME;

#2. Find the number of persons in each country sorted from high to low. 
SELECT COUNTRY_NAME, COUNT(ID) AS NO_OF_PERSONS FROM PERSONS GROUP BY COUNTRY_NAME ORDER BY NO_OF_PERSONS DESC;

#3. Find out an average rating for Persons in respective countries if the average is greater than 3.0 
SELECT COUNTRY_NAME, ROUND(AVG(RATING),1) AS AVERAGE_RATING FROM PERSONS GROUP BY COUNTRY_NAME HAVING AVERAGE_RATING > 3.0;

#4. Find the countries with the same rating as the USA. (Use Subqueries) 
SELECT COUNTRY_NAME, RATING FROM PERSONS WHERE RATING = (SELECT MAX(RATING) FROM PERSONS
WHERE COUNTRY_NAME = 'USA');

#5. Select all countries whose population is greater than the average population of all nations. 
SELECT COUNTRY_NAME, POPULATION FROM COUNTRY WHERE POPULATION > (SELECT AVG(POPULATION) FROM COUNTRY);