WITH cte AS(
    SELECT * FROM {{ source('airbnb', 'reviews') }}
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM    
    cte