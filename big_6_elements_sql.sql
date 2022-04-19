SELECT => indentifies the columns you want as the results
FROM => points to the tables where the results will be fetched from 
WHERE => its a record specific criteria to filter out the table columns data based on a condition
GROUP BY => this group the data returned based on a specific criteria
HAVING =>its a logic condition for group filtering criterial, used after group by if applicable
ORDER BY => sets the dispaly criteria, how the records will be displayed


================================================================
basic SELECT
============
use mavenmovies;
SELECT first_name, last_name, email FROM customer;

=================================================================
select distinct
===============
return the distinct data entries of a selected columns
given multiple columns return diffrentbpermutations with distinct combos
SELECT distinct rating FROM film;
SELECT distinct rental_duration FROM mavenmovies.film;
===============================================
WHERE and AND 
==============
SELECT * FROM mavenmovies.payment WHERE amount = 0.99 AND payment_date > '2006-01-01' AND staff_id = 2;

WHERE and OR
===============
SELECT * FROM mavenmovies.payment WHERE customer_id = 5 OR customer_id = 11 OR customer_id = 29;

WHERE AND IN
=============
SELECT * FROM mavenmovies.payment WHERE customer_id IN (5,11,29);

LIKE and NOT LIKE
==============
pattern matching, wildcard matching is case sensitive
'Denis' and 'denis' are not the same record
WHERE name LIKE 'Denis%' => record that name start with denis
WHERE name LIKE '%Denis' => record that name end with denis
WHERE name LIKE '%denis%' => record that name contain  denis before or after
WHERE name LIKE '_enis' => record that name end with enis with just one char before eg denis


GROUP BY
================
SELECT 
    rating, COUNT(film_id)
FROM
    film
GROUP BY rating;
SELECT 
    rental_duration,
    rating,
    count(film_id),
    replacement_cost
FROM
    film
group by rental_duration, rating , replacement_cost;
===============

HAVING
===========
group level filtering
SELECT 
    rental_duration,
    rating,
    count(film_id) AS c,
    replacement_cost
FROM
    film
group by rental_duration, rating , replacement_cost
HAVING c = 1;

=====




