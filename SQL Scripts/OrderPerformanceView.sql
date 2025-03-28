CREATE VIEW gold.OrderPerformanceView AS 
SELECT 
    order_id, 
    order_status, 
    order_purchase_date, 
    order_estimated_delivery_date, 
    order_delivered_customer_date, 
    actual_delivery_time, 
    estimated_delivery_time, 
    delay, 
    order_approval_time, 
    shipment_processing_days 
FROM dbo.ExternalOrders;