use sakila;
-- Select all the actors with the first name ‘Scarlett’.
SELECT * from actor
where first_name = 'Scarlett'; 

-- How many films (movies) are available for rent and how many films have been rented?
SELECT count(distinct(film_id)) as films_available from film;
SELECT count(distinct(rental_id)) as films_available from rental;

-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT min(length) as "shortest_duration", max(length) as "longest_duration" FROM film;
-- What's the average movie duration expressed in format (hours, minutes)?
SELECT floor(AVG(length) /60) as avg_length, floor(avg(length) - 60) as avg_length_minutes from film;

-- How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT last_name) from actor;

-- Since how many days has the company been operating (check DATEDIFF() function)?
SELECT datediff(max(rental_date), min(rental_date)) as time_operating from rental;

-- Show rental info with additional columns month and weekday. Get 20 results.
select rental_id, rental_date, MONTHNAME(rental_date), DAYNAME(rental_date) from rental
LIMIT 20;

-- Add an additional column day_type with values 'weekend' and 'workday' 
-- depending on the rental day of the week.
SELECT rental_id, rental_date, MONTH(rental_date), WEEKDAY(rental_date)  < 5 as 'WORKDAY' from rental;

-- How many rentals were in the last month of activity?

select COUNT(return_date) from rental
where MONTH(rental_date) = 8;

select * from rental;