CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
     Bulk'https://adfstorageaccount04.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS query1

CREATE VIEW gold.Customers
AS
SELECT *
FROM OPENROWSET(
     Bulk'https://adfstorageaccount04.dfs.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS query1

CREATE VIEW gold.Product_Subcategories
AS
SELECT *
FROM OPENROWSET(
     Bulk'https://adfstorageaccount04.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS query1

CREATE VIEW gold.Product
AS
SELECT *
FROM OPENROWSET(
     Bulk'https://adfstorageaccount04.dfs.core.windows.net/silver/AdventureWorks_Product/',
    FORMAT = 'PARQUET'
) AS query1


CREATE VIEW gold.Returns
AS
SELECT *
FROM OPENROWSET(
     Bulk'https://adfstorageaccount04.dfs.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS query1

CREATE VIEW gold.Territory
AS
SELECT *
FROM OPENROWSET(
     Bulk'https://adfstorageaccount04.dfs.core.windows.net/silver/AdventureWorks_Territory/',
    FORMAT = 'PARQUET'
) AS query1