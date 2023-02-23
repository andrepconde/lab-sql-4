USE sakila;

#Get film ratings.
SELECT DISTINCT rating
FROM film;

#Get release years.
SELECT DISTINCT release_year
FROM film;

#Get all films with ARMAGEDDON in the title.
SELECT title
FROM film
WHERE title REGEXP "ARMAGEDDON";

#Get all films with APOLLO in the title
SELECT title
FROM film
WHERE title REGEXP "APOLLO";

#Get all films which title ends with APOLLO.
SELECT title
FROM film
WHERE title REGEXP "APOLLO$";

#Get all films with word DATE in the title. #dont know why "forever candidate" appears
SELECT title, film_id
FROM film
WHERE title LIKE "%_DATE" OR "DATE_%";

#Get 10 films with the longest title.
SELECT title, length(title)
FROM film
ORDER BY length(title) DESC
LIMIT 10;

#Get 10 the longest films.
SELECT length, title
FROM film
ORDER BY length DESC
LIMIT 10;

#How many films include Behind the Scenes content?
SELECT * 
FROM film;

SELECT COUNT(film_id) 
FROM film
WHERE special_features REGEXP "Behind the scenes";

#List films ordered by release year and title in alphabetical order.
SELECT DISTINCT film_id, title, release_year
FROM film
ORDER BY (release_year AND title)  ASC;