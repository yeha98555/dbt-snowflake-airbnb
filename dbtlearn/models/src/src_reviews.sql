WITH raw_reviews AS (
    SELECT
        *
    FROM
        AIRBNB.RAW.RAW_REVIEWS
)

SELECT
    listing_id,
    date AS review_date,
    comments AS review_text,
    sentiment AS sentiment_text
FROM
    raw_reviews