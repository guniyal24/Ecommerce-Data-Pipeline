# End-to-End E-commerce Data Engineering Project

## Project Overview

This repository contains an end-to-end data engineering solution for e-commerce analytics using the Olist dataset. The project implements a medallion architecture (Bronze, Silver, Gold) on Azure cloud services to process, transform, and analyze e-commerce data from multiple sources.

## Architecture

![Architecture Diagram]

The project follows the medallion architecture pattern:
- **Bronze Layer**: Raw data ingestion from multiple sources
- **Silver Layer**: Cleaned, transformed, and joined data
- **Gold Layer**: Business-specific analytical views

## Data Sources

The project utilizes the Olist Brazilian E-commerce dataset, which consists of multiple related CSV files:
- olist_customers_dataset.csv
- olist_geolocation_dataset.csv
- olist_order_items_dataset.csv
- olist_order_payments_dataset.csv
- olist_order_reviews_dataset.csv
- olist_orders_dataset.csv
- olist_products_dataset.csv
- olist_sellers_dataset.csv
- product_category_name_translation.csv

The data is distributed across different sources:
- GitHub repository
- MySQL database
- MongoDB database

## Technologies Used

- **Azure Data Factory**: For data ingestion from multiple sources
- **Azure Data Lake Storage**: For storing data in the medallion architecture
- **Azure Databricks**: For data transformation and processing
- **Azure Synapse Analytics**: For creating analytical views and SQL-based processing
- **GitHub**: For version control and storing part of the dataset
- **MySQL**: For relational database source
- **MongoDB**: For NoSQL database source

## Implementation Details

### 1. Data Ingestion (Bronze Layer)

Data was ingested from three different sources using Azure Data Factory pipelines:
- HTTP source (GitHub)
- SQL source (MySQL)
- NoSQL source (MongoDB)

The ingestion pipeline collects all the raw data and stores it in the Bronze layer in Azure Data Lake Storage.

### 2. Data Transformation (Silver Layer)

Azure Databricks was used to:
- Clean raw data from the Bronze layer
- Handle missing values and data quality issues
- Create derived columns and features
- Join multiple tables to create a unified view
- Apply business rules and transformations
- Store the processed data in the Silver layer

### 3. Data Analytics (Gold Layer)

Azure Synapse Analytics was used to create multiple analytical views tailored for specific business needs:
- **OrderPerformanceView**: Metrics related to order processing and fulfillment
- **PaymentPatternsView**: Analysis of payment methods and patterns
- **ProductPerformanceView**: Product-level sales performance and metrics
- **SellerPerformanceView**: Seller performance evaluation metrics
- **CustomerAnalyticsView**: Customer behavior and purchasing patterns

## Getting Started

### Prerequisites

- Azure subscription
- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks workspace
- Azure Synapse Analytics workspace
- MySQL server (for source data)
- MongoDB instance (for source data)

### Setup and Configuration

1. **Data Sources Setup**:
   - Upload designated files to GitHub repository
   - Import relevant tables to MySQL database
   - Import appropriate collections to MongoDB

2. **Azure Resources Deployment**:
   - Provision Azure Data Lake Storage Gen2
   - Create Azure Data Factory instance
   - Set up Azure Databricks workspace
   - Deploy Azure Synapse Analytics workspace

3. **Pipeline Configuration**:
   - Configure ADF pipelines for data ingestion
   - Set up Databricks notebooks for transformation
   - Create Synapse Analytics scripts for views

## Project Structure

```
├── adf-templates/              # Azure Data Factory pipeline templates
├── databricks-notebooks/       # Databricks transformation notebooks
├── synapse-scripts/            # Synapse Analytics SQL scripts
│   ├── OrderPerformanceView.sql
│   ├── PaymentPatternsView.sql
│   ├── ProductPerformanceView.sql
│   ├── SellerPerformanceView.sql
│   └── CustomerAnalyticsView.sql
├── schema/                     # Data schema definitions
└── README.md
```

## Future Enhancements

- Implement real-time data processing with Azure Stream Analytics
- Add Power BI dashboards for visualization
- Implement CI/CD pipelines for automation
- Add data quality monitoring
- Implement data lineage tracking

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
