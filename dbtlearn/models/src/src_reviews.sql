WITH raw_reviews AS (
    SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
)

SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    sentiment AS review_sentiment
FROM
    raw_reviews

