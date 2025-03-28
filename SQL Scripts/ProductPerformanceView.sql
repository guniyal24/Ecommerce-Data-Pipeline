-- 4. Product Performance View
CREATE VIEW gold.ProductPerformanceView AS
SELECT
    p.product_id,
    p.product_category_name,
    p.product_category_name_english,
    COUNT(DISTINCT r.review_id) AS review_count,
    AVG(r.review_score) AS avg_review_score,
    COUNT(DISTINCT o.order_id) AS order_count,
    SUM(p.price) AS total_sales,
    AVG(p.freight_value) AS avg_shipping_cost
FROM dbo.ExternalProducts p
LEFT JOIN dbo.ExternalReviews r ON p.product_id = r.product_id
LEFT JOIN dbo.ExternalOrders o ON r.order_item_id = o.order_id
GROUP BY
    p.product_id,
    p.product_category_name,
    p.product_category_name_english;