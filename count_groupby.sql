# count
SELECT count(title)
FROM film
WHERE rental_rate = .99
;

# count and group by
SELECT count(title), rental_rate
FROM film
GROUP BY rental_rate
;

# you can group by SELECT column (2 = rental_rate)
SELECT count(title), rental_rate
FROM film
GROUP BY 2
;