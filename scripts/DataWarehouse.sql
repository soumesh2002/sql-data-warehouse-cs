-- CREATE DATABASE DataWarehouse;

-- use database: DataWarehouses

USE DataWarehouse;

-- create schema for separating responsibilites

-- CREATE SCHEMA bronze;
-- GO

-- CREATE SCHEMA silver;
-- GO

-- CREATE SCHEMA gold;

-- 

-- DDL for tables (support_crm)
CREATE TABLE bronze.crm_cust_info (
    cst_id              INT,
    cst_key             NVARCHAR    (50),
    cst_firstname       NVARCHAR    (50),
    cst_lastname        NVARCHAR    (50),
    cst_material_status NVARCHAR    (50),
    cst_gndr            NVARCHAR    (50),
    cst_create_date     DATE
);

CREATE TABLE bronze.crm_prod_info (
    prd_id              INT,
    prd_key             NVARCHAR    (50),
    prd_nm              NVARCHAR    (50),
    prd_cost            INT,
    prd_line            NVARCHAR    (10),
    prd_start_dt        DATETIME,
    prd_end_dt          DATETIME
);

CREATE TABLE bronze.crm_sales_details (
    sls_ord_n           NVARCHAR    (50),
    sls_prd_key         NVARCHAR    (50),
    sls_cust_id         NVARCHAR    (50),
    sls_order_dt        DATE,
    sls_due_dt          DATE,
    sls_sales           INT,
    sls_quantity        INT,
    sls_price           INT
);