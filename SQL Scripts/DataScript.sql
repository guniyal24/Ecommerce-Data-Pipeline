SELECT TOP 100 *
FROM OPENROWSET(
    BULK 'https://oliststoragegan.dfs.core.windows.net/olistdata/silver/',
    FORMAT = 'PARQUET'
) AS result1