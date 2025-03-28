-- 2. Customer Analytics View
CREATE VIEW gold.CustomerAnalyticsView AS
SELECT
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state,
    COUNT(DISTINCT order_id) AS total_orders,
    AVG(payment_value) AS avg_order_value,
    SUM(payment_value) AS total_spend,
    AVG(CAST(delay AS FLOAT)) AS avg_delivery_delay  
FROM dbo.ExternalOrders
GROUP BY
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state;