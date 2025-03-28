CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'ganesh13!' ;


CREATE EXTERNAL DATA SOURCE OlistDataSource
WITH (
    LOCATION = 'https://oliststoragegan.dfs.core.windows.net/olistdata/silver/'
);

CREATE EXTERNAL FILE FORMAT ParquetFormat
WITH (
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);