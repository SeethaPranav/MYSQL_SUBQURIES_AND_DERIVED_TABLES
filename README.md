# MYSQL_SUBQURIES_AND_DERIVED_TABLES
This repository offers a detailed exploration of subqueries and derived tables in SQL, showcasing their usage for efficient data retrieval and complex querying techniques.

1.Select all countries whose population is greater than the average population of all nations. 

SELECT COUNTRY_NAME, POPULATION FROM COUNTRY WHERE POPULATION > (SELECT AVG(POPULATION) FROM COUNTRY); 

![image](https://github.com/user-attachments/assets/b481137a-775d-4553-8f17-6dbe8a6175ba)

2.Find the countries with the same rating as the USA. 

SELECT COUNTRY_NAME, RATING FROM PERSONS WHERE RATING = (SELECT MAX(RATING) FROM PERSONS WHERE COUNTRY_NAME = 'USA');

![image](https://github.com/user-attachments/assets/bd8d0e9f-7789-40f4-9664-069df5ea81c9)

3.Find out an average rating for Persons in respective countries if the average is greater than 3.0 

SELECT COUNTRY_NAME, ROUND(AVG(RATING),1) AS AVERAGE_RATING FROM PERSONS GROUP BY COUNTRY_NAME HAVING AVERAGE_RATING > 3.0;

![image](https://github.com/user-attachments/assets/5fc8b211-3cc3-49f7-b15b-f3afc63a3271)

4. Find the number of persons in each country sorted from high to low.

SELECT COUNTRY_NAME, COUNT(ID) AS NO_OF_PERSONS FROM PERSONS GROUP BY COUNTRY_NAME ORDER BY NO_OF_PERSONS DESC;

![image](https://github.com/user-attachments/assets/7442e023-7bba-43c3-9580-d663a3105c9a)

5. Find the number of persons in each country.

SELECT COUNTRY_NAME, COUNT(ID) AS NO_OF_PERSONS FROM PERSONS GROUP BY COUNTRY_NAME;

![image](https://github.com/user-attachments/assets/c5e775f0-fba2-4e7b-b624-e30bd30a2982)






