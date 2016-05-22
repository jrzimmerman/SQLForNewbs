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
    i.store_id,
    count(f.film_id),
    f.rating
FROM film as f
LEFT JOIN inventory as i
ON f.film_id = i.film_id
GROUP BY i.store_id, rating
ORDER BY 2 DESC;

# Which rating is most prevalent in each price
SELECT count(film_id), rating, rental_rate
FROM film
GROUP BY rating, rental_rate
ORDER BY 2;

# solution
SELECT rating, rental_rate, count(film_id)
FROM film
GROUP BY 1, 2;