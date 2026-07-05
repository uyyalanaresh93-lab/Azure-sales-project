CREATE DATABASE SCOPED CREDENTIAL cred_nsk
WITH    
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE sourc_silver
WITH
(
    LOCATION = 'https://adfstorageaccount04.dfs.core.windows.net/silver',
    CREDENTIAL = cred_nsk
);

CREATE EXTERNAL DATA SOURCE sourc_gold
WITH
(
    LOCATION = 'https://adfstorageaccount04.dfs.core.windows.net/gold',
    CREDENTIAL = cred_nsk
);

CREATE EXTERNAL FILE FORMAT FORMAT_PARQUET  
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

-----------------------------
--Create EXTERNAL table
----------------------------

CREATE  EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = FORMAT_PAQUET

)As 
select * from gold.sales