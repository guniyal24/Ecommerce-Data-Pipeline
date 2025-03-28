-- 5. Seller Performance View
CREATE VIEW gold.SellerPerformanceView AS
SELECT
    p.seller_id,
    p.seller_city,
    p.seller_state,
    p.seller_zip_code_prefix,
    COUNT(DISTINCT p.product_id) AS total_products,
    COUNT(DISTINCT r.review_id) AS total_reviews,
    AVG(r.review_score) AS avg_review_score,
    SUM(p.price) AS total_sales,
    AVG(CAST(o.delay AS FLOAT)) AS avg_delivery_delay  -- Cast BIT to FLOAT
FROM dbo.ExternalProducts p
LEFT JOIN dbo.ExternalReviews r ON p.product_id = r.product_id
LEFT JOIN dbo.ExternalOrders o ON r.order_item_id = o.order_id
GROUP BY
    p.seller_id,
    p.seller_city,
    p.seller_state,
    p.seller_zip_code_prefix;