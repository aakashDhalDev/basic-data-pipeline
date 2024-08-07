SELECT
    *
FROM
    fct_reviews fr 
INNER JOIN
    dim_listings_cleansed dlc
ON
    fr.listing_id = dlc.listing_id
WHERE
    fr.review_date < dlc.created_at