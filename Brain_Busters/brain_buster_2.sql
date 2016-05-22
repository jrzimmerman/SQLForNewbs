# which rating do we have the most films in
SELECT count(film_id), rating
FROM film
GROUP BY rating
ORDER BY 1 DESC;

# solution
SELECT rating, count(film_id)
FROM film
GROUP BY 1;

# which rating is most prevalent in each store
SELECT 
    f.rating,
    i.store_id,
    count(f.film_id)
FROM film as f, inventory as i
WHERE f.film_id = i.film_id
GROUP BY f.rating, i.store_id
ORDER BY 1, 3 DESC;

# Which rating is most prevalent in each price
SELECT count(film_id), rating, rental_rate
FROM film
GROUP BY rating, rental_rate
ORDER BY 2;

# solution
SELECT rating, rental_rate, count(film_id)
FROM film
GROUP BY 1, 2;