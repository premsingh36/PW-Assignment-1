use mavenmovies;
-- Q2. List all details of actors
Select * from actor;

-- Q3. List all customer information from DB.?
SELECT * FROM Customer;

-- Q4. List different countries?
SELECT * FROM country;

-- Q5. Display all active customers?
SELECT * FROM customer where active = 1;

-- Q.6 Display all active customers?
SELECT * FROM rental where customer_id = 1;

-- Q7. Display all the films whose rental duration is greater than 5 ?
SELECT * FROM film where rental_duration >5;

-- Q8. List the total number of films whose replacement cost is greater than $15 and less than $20
SELECT COUNT(*) AS 'Counts of films' FROM film WHERE replacement_cost >15 AND replacement_cost<20;

-- Q 9. Display the count of unique first names of actors.
-- As per the question, we may have two answers, depending on the meaning of the question.
-- ANSWER 1: List of only those names which do not repeat in the column first_name of table actors.
SELECT
first_name, COUNT(first_name)
FROM actor
GROUP BY(first_name)
HAVING COUNT(first_name) = 1
ORDER BY COUNT(first_name) DESC;

-- Q 2: List of DISTINCT names in the column first_name of table actors.
SELECT DISTINCT first_name FROM actor ORDER BY first_name;

-- Q10. Display the first 10 records from the customer table
SELECT * FROM customer LIMIT 10;

-- Q11. Display the first 3 records from the customer table whose first name starts with 'b'
SELECT * FROM customer WHERE first_name LIKE 'B%' LIMIT 3;

-- Q12. Display the names of the first 5 movies which are rated as ‘G’?
SELECT * FROM film WHERE rating = 'G' LIMIT 5;

-- Q 13. Find all customers whose first name starts with "a".
SELECT * FROM customer WHERE first_name LIKE 'a%';

-- Q 14. Find all customers whose first name ends with "a".
select first_name from customer where first_name like 'a%';

-- Q 15. Display the list of first 4 cities which start and end with ‘a’ 
select * from customer where first_name like "%a";
select concat (first_name, "",last_name) as name from customer where first_name like '%a';

-- Q 16. Find all customers whose first name have "NI" in any position?
select * from city where city like "a%a" limit 4;

-- Q 17. Find all customers whose first name have "r" in the second position  ?
select * from customer where first_name like '%NI%';

-- Q 18. Find all customers whose first name starts with "a" and are at least 5 characters in length?
select * from customer where first_name like '%_r%';

-- Q 19. Find all customers whose first name starts with "a" and ends with "o" ?
select * from customer where first_name like 'a%' and length (first_name) >=5;

-- Q 20. Get the films with pg and pg-13 rating using IN operator ?
select * from customer where first_name like 'a%o';

-- Q 21. Get the films with length between 50 to 100 using between operator ?
select * from film;
select * from film where rating in ('PG', 'PG-13');

-- Q 22. Get the top 50 actors using limit operator ?
select title, length from film where length between 50 and 100;

-- Q 23. Get the distinct film ids from inventory table ?
select * from actor limit 50;

-- Q 24. Query: Get the distinct film ids from inventory table ?
select distinct ( film_id) from inventory;
 





