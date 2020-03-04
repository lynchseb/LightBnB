SELECT properties.*, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;


-- Version above is what the want, version below is prettier

-- SELECT properties.id, title, cost_per_night, ROUND(avg(rating),2)
-- FROM properties
-- JOIN property_reviews ON property_id = properties.id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING avg(rating) >= 4
-- ORDER BY cost_per_night;

