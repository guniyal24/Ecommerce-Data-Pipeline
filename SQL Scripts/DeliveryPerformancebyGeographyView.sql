CREATE VIEW gold.DeliveryGeographyView AS
SELECT
    o.customer_state,
    o.customer_city,
    p.seller_state,
    p.seller_city,
    AVG(CAST(o.delay AS FLOAT)) AS avg_delay,  -- Cast BIT to FLOAT
    AVG(o.actual_delivery_time) AS avg_delivery_time,
    COUNT(DISTINCT o.order_id) AS shipment_count
FROM dbo.ExternalOrders o
JOIN dbo.ExternalProducts p ON o.order_id = p.product_id
GROUP BY
    o.customer_state,
    o.customer_city,
    p.seller_state,
    p.seller_city;