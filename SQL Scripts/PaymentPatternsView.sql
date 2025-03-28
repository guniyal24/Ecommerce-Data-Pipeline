-- 3. Payment Patterns View
CREATE VIEW gold.PaymentPatternsView AS
SELECT
    payment_type,
    payment_installments,
    COUNT(*) AS transaction_count,
    AVG(payment_value) AS avg_transaction_value,
    SUM(payment_value) AS total_value
FROM dbo.ExternalOrders
GROUP BY
    payment_type,
    payment_installments;