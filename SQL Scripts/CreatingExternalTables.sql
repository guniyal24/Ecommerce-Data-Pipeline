-- Orders table
CREATE EXTERNAL TABLE dbo.ExternalOrders (
    order_id VARCHAR(100),
    customer_id VARCHAR(100),
    order_status VARCHAR(50),
    order_delivered_customer_date DATETIME2,
    order_estimated_delivery_date DATETIME2,
    order_purchase_date DATETIME2,
    actual_delivery_time FLOAT,
    estimated_delivery_time FLOAT,
    delay BIT ,
    order_approval_time FLOAT,
    shipment_processing_days FLOAT,
    customer_unique_id VARCHAR(100),
    customer_zip_code_prefix VARCHAR(20),
    customer_city VARCHAR(100),
    customer_state VARCHAR(50),
    payment_sequential INT,
    payment_type VARCHAR(50),
    payment_installments INT,
    payment_value FLOAT
)
WITH (
    LOCATION = '/',
    DATA_SOURCE = OlistDataSource,
    FILE_FORMAT = ParquetFormat
);

-- Reviews table
CREATE EXTERNAL TABLE dbo.ExternalReviews (
    review_id VARCHAR(100),
    review_score INT,
    review_comment_title VARCHAR(200),
    review_comment_message VARCHAR(1000),
    review_creation_date DATETIME2,
    review_answer_timestamp DATETIME2,
    order_item_id VARCHAR(100),
    product_id VARCHAR(100)
)
WITH (
    LOCATION = '/',
    DATA_SOURCE = OlistDataSource,
    FILE_FORMAT = ParquetFormat
);

-- Products table
CREATE EXTERNAL TABLE dbo.ExternalProducts (
    product_id VARCHAR(100),
    seller_id VARCHAR(100),
    shipping_limit_date DATETIME2,
    price FLOAT,
    freight_value FLOAT,
    product_category_name VARCHAR(100),
    product_name_lenght INT,
    product_description_lenght INT,
    product_photos_qty INT,
    product_weight_g FLOAT,
    product_length_cm FLOAT,
    product_height_cm FLOAT,
    product_width_cm FLOAT,
    seller_zip_code_prefix VARCHAR(20),
    seller_city VARCHAR(100),
    seller_state VARCHAR(50),
    geolocation_lat FLOAT,
    geolocation_lng FLOAT,
    geolocation_city VARCHAR(100),
    geolocation_state VARCHAR(50),
    product_category_name_english VARCHAR(100)
)
WITH (
    LOCATION = '/',
    DATA_SOURCE = OlistDataSource,
    FILE_FORMAT = ParquetFormat
);