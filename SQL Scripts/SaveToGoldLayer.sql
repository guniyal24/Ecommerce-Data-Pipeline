
-- 1. Order Performance
CREATE EXTERNAL TABLE gold.OrderPerformance
WITH (
    LOCATION = '/OrderPerformance/',
    DATA_SOURCE = OlistGoldDataSource,
    FILE_FORMAT = ParquetFormat
)
AS SELECT * FROM gold.OrderPerformanceView;

-- 2. Customer Analytics
CREATE EXTERNAL TABLE gold.CustomerAnalytics
WITH (
    LOCATION = '/CustomerAnalytics/',
    DATA_SOURCE = OlistGoldDataSource,
    FILE_FORMAT = ParquetFormat
)
AS SELECT * FROM gold.CustomerAnalyticsView;

-- 3. Payment Patterns
CREATE EXTERNAL TABLE gold.PaymentPatterns
WITH (
    LOCATION = '/PaymentPatterns/',
    DATA_SOURCE = OlistGoldDataSource,
    FILE_FORMAT = ParquetFormat
)
AS SELECT * FROM gold.PaymentPatternsView;

-- 4. Product Performance
CREATE EXTERNAL TABLE gold.ProductPerformance
WITH (
    LOCATION = '/ProductPerformance/',
    DATA_SOURCE = OlistGoldDataSource,
    FILE_FORMAT = ParquetFormat
)
AS SELECT * FROM gold.ProductPerformanceView;

-- 5. Seller Performance
CREATE EXTERNAL TABLE gold.SellerPerformance
WITH (
    LOCATION = '/SellerPerformance/',
    DATA_SOURCE = OlistGoldDataSource,
    FILE_FORMAT = ParquetFormat
)
AS SELECT * FROM gold.SellerPerformanceView;

-- 6. Delivery Geography
CREATE EXTERNAL TABLE gold.DeliveryGeography
WITH (
    LOCATION = '/DeliveryGeography/',
    DATA_SOURCE = OlistGoldDataSource,
    FILE_FORMAT = ParquetFormat
)
AS SELECT * FROM gold.DeliveryGeographyView;
