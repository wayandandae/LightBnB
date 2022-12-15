SELECT reservations.id, properties.title, properties.cost_per_night, start_date, avg(rating) as average_rating
FROM reservations
JOIN properties on properties.id = property_id
JOIN property_reviews on property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;