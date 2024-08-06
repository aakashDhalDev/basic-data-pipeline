WITH cte AS(
    SELECT * FROM {{ source('airbnb', 'hosts') }}
)

SELECT
    id AS host_id,
    name AS host_name,
    IS_SUPERHOST, 
    CREATED_AT, 
    UPDATED_AT
FROM
    cte