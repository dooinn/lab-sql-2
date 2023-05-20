use sakila;


-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name = 'Scarlett';


-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? > 958

select count(distinct(film_id)) from inventory;



-- 4. How many films have been rented? > 16044

select COUNT(*) as total_rented from rental;

-- 5. What is the shortest and longest rental period? > shortest: 3, longest : 7
select min(rental_duration) as shortest_rental, max(rental_duration) as longest_rental from film;


-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration. > min: 46, max: 185
select min(length) as min_duration, max(length) as manxduration from film;


-- 7. What's the average movie duration? > 115.2720
select avg(length) as avg_duration from film;


-- 8. What's the average movie duration expressed in format (hours, minutes)? 1hours 55minutes
select 
	avg(length),  
	CONCAT(FLOOR(avg(length) / 60), ' hours ', ROUND(MOD(avg(length), 60),0), ' minutes') AS hours_minutes 
from film;

    
    
-- 9. How many movies longer than 3 hours? > 39

select count(*) from film
where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select CONCAT(lower(first_name),'.',lower(last_name),'@sakilacustomer.org') from actor;


-- 11. What's the length of the longest film title? > 27
select  MAX(LENGTH(title)) from film;



