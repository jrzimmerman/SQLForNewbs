# list by film name, category, and language
SELECT
  f.title,
  c.name,
  l.name
FROM
  film AS f, film_category AS fc, category AS c, language AS l
WHERE
  f.film_id = fc.film_id
  AND fc.category_id = c.category_id
  AND f.language_id = l.language_id
ORDER BY 1
;

# solution
SELECT
  f.title, c.name, l.name
FROM
  film f, language l, film_category fc, category c
WHERE
  f.film_id = fc.film_id
  AND
  c.category_id = fc.category_id
  AND
  f.language_id = l.language_id
;

# how many times has each movie been rented out
SELECT
  f.title,
  count(r.rental_id)
FROM
  rental r, inventory i, film f
WHERE
  r.inventory_id = i.inventory_id
  AND
  i.film_id = f.film_id
GROUP BY 1
ORDER BY 2 DESC;

# solution
SELECT
  f.title, count(r.rental_id)
FROM
  film f, rental r, inventory i
WHERE
  f.film_id = i.film_id
  AND i.inventory_id = r.inventory_id
GROUP BY
  1
;