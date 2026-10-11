/* =========================================================
   STOCK MARKET ASSIGNMENT
   ========================================================= */


/* =========================================================
   CREATE DATABASE
   ========================================================= */

DROP DATABASE IF EXISTS stockmarket;

CREATE DATABASE stockmarket;

USE stockmarket;


/* =========================================================
   EICHER MOTORS
   ========================================================= */

CREATE TABLE eicher_motors (
    `Date` DATE,
    `Open Price` DECIMAL(10,2),
    `High Price` DECIMAL(10,2),
    `Low Price` DECIMAL(10,2),
    `Close Price` DECIMAL(10,2),
    `WAP` DECIMAL(10,2),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` DECIMAL(15,2),
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` DECIMAL(10,2),
    `Spread High-Low` DECIMAL(10,2),
    `Spread Close-Open` DECIMAL(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Eicher Motors.csv'
INTO TABLE eicher_motors
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @Date,
    @Open_Price,
    @High_Price,
    @Low_Price,
    @Close_Price,
    @WAP,
    @No_of_Shares,
    @No_of_Trades,
    @Total_Turnover,
    @Deliverable_Quantity,
    @Deli_Qty_Percent,
    @Spread_High_Low,
    @Spread_Close_Open
)
SET
    `Date` = STR_TO_DATE(@Date, '%d-%M-%Y'),
    `Open Price` = NULLIF(@Open_Price, ''),
    `High Price` = NULLIF(@High_Price, ''),
    `Low Price` = NULLIF(@Low_Price, ''),
    `Close Price` = NULLIF(@Close_Price, ''),
    `WAP` = NULLIF(@WAP, ''),
    `No.of Shares` = NULLIF(@No_of_Shares, ''),
    `No. of Trades` = NULLIF(@No_of_Trades, ''),
    `Total Turnover (Rs.)` = NULLIF(@Total_Turnover, ''),
    `Deliverable Quantity` = NULLIF(@Deliverable_Quantity, ''),
    `% Deli. Qty to Traded Qty` = NULLIF(@Deli_Qty_Percent, ''),
    `Spread High-Low` = NULLIF(@Spread_High_Low, ''),
    `Spread Close-Open` = NULLIF(@Spread_Close_Open, '');


SELECT COUNT(*) AS `Total Rows`
FROM eicher_motors;

SELECT `Date`, `Close Price`
FROM eicher_motors
LIMIT 10;


/* =========================================================
   BAJAJ AUTO
   ========================================================= */

CREATE TABLE bajaj_auto (
    `Date` DATE,
    `Open Price` DECIMAL(10,2),
    `High Price` DECIMAL(10,2),
    `Low Price` DECIMAL(10,2),
    `Close Price` DECIMAL(10,2),
    `WAP` DECIMAL(10,2),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` DECIMAL(15,2),
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` DECIMAL(10,2),
    `Spread High-Low` DECIMAL(10,2),
    `Spread Close-Open` DECIMAL(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bajaj Auto.csv'
INTO TABLE bajaj_auto
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @Date,
    @Open_Price,
    @High_Price,
    @Low_Price,
    @Close_Price,
    @WAP,
    @No_of_Shares,
    @No_of_Trades,
    @Total_Turnover,
    @Deliverable_Quantity,
    @Deli_Qty_Percent,
    @Spread_High_Low,
    @Spread_Close_Open
)
SET
    `Date` = STR_TO_DATE(@Date, '%d-%M-%Y'),
    `Open Price` = NULLIF(@Open_Price, ''),
    `High Price` = NULLIF(@High_Price, ''),
    `Low Price` = NULLIF(@Low_Price, ''),
    `Close Price` = NULLIF(@Close_Price, ''),
    `WAP` = NULLIF(@WAP, ''),
    `No.of Shares` = NULLIF(@No_of_Shares, ''),
    `No. of Trades` = NULLIF(@No_of_Trades, ''),
    `Total Turnover (Rs.)` = NULLIF(@Total_Turnover, ''),
    `Deliverable Quantity` = NULLIF(@Deliverable_Quantity, ''),
    `% Deli. Qty to Traded Qty` = NULLIF(@Deli_Qty_Percent, ''),
    `Spread High-Low` = NULLIF(@Spread_High_Low, ''),
    `Spread Close-Open` = NULLIF(@Spread_Close_Open, '');


SELECT COUNT(*) AS `Total Rows`
FROM bajaj_auto;

SELECT `Date`, `Close Price`
FROM bajaj_auto
LIMIT 10;


/* =========================================================
   TCS
   ========================================================= */

CREATE TABLE tcs (
    `Date` DATE,
    `Open Price` DECIMAL(10,2),
    `High Price` DECIMAL(10,2),
    `Low Price` DECIMAL(10,2),
    `Close Price` DECIMAL(10,2),
    `WAP` DECIMAL(10,2),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` DECIMAL(15,2),
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` DECIMAL(10,2),
    `Spread High-Low` DECIMAL(10,2),
    `Spread Close-Open` DECIMAL(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TCS.csv'
INTO TABLE tcs
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @Date,
    @Open_Price,
    @High_Price,
    @Low_Price,
    @Close_Price,
    @WAP,
    @No_of_Shares,
    @No_of_Trades,
    @Total_Turnover,
    @Deliverable_Quantity,
    @Deli_Qty_Percent,
    @Spread_High_Low,
    @Spread_Close_Open
)
SET
    `Date` = STR_TO_DATE(@Date, '%d-%M-%Y'),
    `Open Price` = NULLIF(@Open_Price, ''),
    `High Price` = NULLIF(@High_Price, ''),
    `Low Price` = NULLIF(@Low_Price, ''),
    `Close Price` = NULLIF(@Close_Price, ''),
    `WAP` = NULLIF(@WAP, ''),
    `No.of Shares` = NULLIF(@No_of_Shares, ''),
    `No. of Trades` = NULLIF(@No_of_Trades, ''),
    `Total Turnover (Rs.)` = NULLIF(@Total_Turnover, ''),
    `Deliverable Quantity` = NULLIF(@Deliverable_Quantity, ''),
    `% Deli. Qty to Traded Qty` = NULLIF(@Deli_Qty_Percent, ''),
    `Spread High-Low` = NULLIF(@Spread_High_Low, ''),
    `Spread Close-Open` = NULLIF(@Spread_Close_Open, '');


SELECT COUNT(*) AS `Total Rows`
FROM tcs;

SELECT `Date`, `Close Price`
FROM tcs
LIMIT 10;


/* =========================================================
   TVS MOTORS
   ========================================================= */

CREATE TABLE tvs_motors (
    `Date` DATE,
    `Open Price` DECIMAL(10,2),
    `High Price` DECIMAL(10,2),
    `Low Price` DECIMAL(10,2),
    `Close Price` DECIMAL(10,2),
    `WAP` DECIMAL(10,2),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` DECIMAL(15,2),
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` DECIMAL(10,2),
    `Spread High-Low` DECIMAL(10,2),
    `Spread Close-Open` DECIMAL(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TVS Motors.csv'
INTO TABLE tvs_motors
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @Date,
    @Open_Price,
    @High_Price,
    @Low_Price,
    @Close_Price,
    @WAP,
    @No_of_Shares,
    @No_of_Trades,
    @Total_Turnover,
    @Deliverable_Quantity,
    @Deli_Qty_Percent,
    @Spread_High_Low,
    @Spread_Close_Open
)
SET
    `Date` = STR_TO_DATE(@Date, '%d-%M-%Y'),
    `Open Price` = NULLIF(@Open_Price, ''),
    `High Price` = NULLIF(@High_Price, ''),
    `Low Price` = NULLIF(@Low_Price, ''),
    `Close Price` = NULLIF(@Close_Price, ''),
    `WAP` = NULLIF(@WAP, ''),
    `No.of Shares` = NULLIF(@No_of_Shares, ''),
    `No. of Trades` = NULLIF(@No_of_Trades, ''),
    `Total Turnover (Rs.)` = NULLIF(@Total_Turnover, ''),
    `Deliverable Quantity` = NULLIF(@Deliverable_Quantity, ''),
    `% Deli. Qty to Traded Qty` = NULLIF(@Deli_Qty_Percent, ''),
    `Spread High-Low` = NULLIF(@Spread_High_Low, ''),
    `Spread Close-Open` = NULLIF(@Spread_Close_Open, '');


SELECT COUNT(*) AS `Total Rows`
FROM tvs_motors;

SELECT `Date`, `Close Price`
FROM tvs_motors
LIMIT 10;


/* =========================================================
   HERO MOTOCORP
   ========================================================= */

CREATE TABLE hero_motocorp (
    `Date` DATE,
    `Open Price` DECIMAL(10,2),
    `High Price` DECIMAL(10,2),
    `Low Price` DECIMAL(10,2),
    `Close Price` DECIMAL(10,2),
    `WAP` DECIMAL(10,2),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` DECIMAL(15,2),
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` DECIMAL(10,2),
    `Spread High-Low` DECIMAL(10,2),
    `Spread Close-Open` DECIMAL(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Hero Motocorp.csv'
INTO TABLE hero_motocorp
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @Date,
    @Open_Price,
    @High_Price,
    @Low_Price,
    @Close_Price,
    @WAP,
    @No_of_Shares,
    @No_of_Trades,
    @Total_Turnover,
    @Deliverable_Quantity,
    @Deli_Qty_Percent,
    @Spread_High_Low,
    @Spread_Close_Open
)
SET
    `Date` = STR_TO_DATE(@Date, '%d-%M-%Y'),
    `Open Price` = NULLIF(@Open_Price, ''),
    `High Price` = NULLIF(@High_Price, ''),
    `Low Price` = NULLIF(@Low_Price, ''),
    `Close Price` = NULLIF(@Close_Price, ''),
    `WAP` = NULLIF(@WAP, ''),
    `No.of Shares` = NULLIF(@No_of_Shares, ''),
    `No. of Trades` = NULLIF(@No_of_Trades, ''),
    `Total Turnover (Rs.)` = NULLIF(@Total_Turnover, ''),
    `Deliverable Quantity` = NULLIF(@Deliverable_Quantity, ''),
    `% Deli. Qty to Traded Qty` = NULLIF(@Deli_Qty_Percent, ''),
    `Spread High-Low` = NULLIF(@Spread_High_Low, ''),
    `Spread Close-Open` = NULLIF(@Spread_Close_Open, '');


SELECT COUNT(*) AS `Total Rows`
FROM hero_motocorp;

SELECT `Date`, `Close Price`
FROM hero_motocorp
LIMIT 10;


/* =========================================================
   INFOSYS
   ========================================================= */

CREATE TABLE infosys (
    `Date` DATE,
    `Open Price` DECIMAL(10,2),
    `High Price` DECIMAL(10,2),
    `Low Price` DECIMAL(10,2),
    `Close Price` DECIMAL(10,2),
    `WAP` DECIMAL(10,2),
    `No.of Shares` INT,
    `No. of Trades` INT,
    `Total Turnover (Rs.)` DECIMAL(15,2),
    `Deliverable Quantity` INT,
    `% Deli. Qty to Traded Qty` DECIMAL(10,2),
    `Spread High-Low` DECIMAL(10,2),
    `Spread Close-Open` DECIMAL(10,2)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Infosys.csv'
INTO TABLE infosys
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    @Date,
    @Open_Price,
    @High_Price,
    @Low_Price,
    @Close_Price,
    @WAP,
    @No_of_Shares,
    @No_of_Trades,
    @Total_Turnover,
    @Deliverable_Quantity,
    @Deli_Qty_Percent,
    @Spread_High_Low,
    @Spread_Close_Open
)
SET
    `Date` = STR_TO_DATE(@Date, '%d-%M-%Y'),
    `Open Price` = NULLIF(@Open_Price, ''),
    `High Price` = NULLIF(@High_Price, ''),
    `Low Price` = NULLIF(@Low_Price, ''),
    `Close Price` = NULLIF(@Close_Price, ''),
    `WAP` = NULLIF(@WAP, ''),
    `No.of Shares` = NULLIF(@No_of_Shares, ''),
    `No. of Trades` = NULLIF(@No_of_Trades, ''),
    `Total Turnover (Rs.)` = NULLIF(@Total_Turnover, ''),
    `Deliverable Quantity` = NULLIF(@Deliverable_Quantity, ''),
    `% Deli. Qty to Traded Qty` = NULLIF(@Deli_Qty_Percent, ''),
    `Spread High-Low` = NULLIF(@Spread_High_Low, ''),
    `Spread Close-Open` = NULLIF(@Spread_Close_Open, '');


SELECT COUNT(*) AS `Total Rows`
FROM infosys;

SELECT `Date`, `Close Price`
FROM infosys
LIMIT 10;


/* =========================================================
   CHECK ALL SOURCE DATES
   ========================================================= */

SELECT 'Bajaj' AS `Stock`,
       COUNT(*) AS `Total Rows`,
       COUNT(`Date`) AS `Non-NULL Dates`
FROM bajaj_auto

UNION ALL

SELECT 'Eicher',
       COUNT(*),
       COUNT(`Date`)
FROM eicher_motors

UNION ALL

SELECT 'Hero',
       COUNT(*),
       COUNT(`Date`)
FROM hero_motocorp

UNION ALL

SELECT 'Infosys',
       COUNT(*),
       COUNT(`Date`)
FROM infosys

UNION ALL

SELECT 'TCS',
       COUNT(*),
       COUNT(`Date`)
FROM tcs

UNION ALL

SELECT 'TVS',
       COUNT(*),
       COUNT(`Date`)
FROM tvs_motors;


/* =========================================================
   TASK 1
   20 DAY MA AND 50 DAY MA
   ========================================================= */


/* Delete old tables if they exist */

DROP TABLE IF EXISTS bajaj1;
DROP TABLE IF EXISTS eicher1;
DROP TABLE IF EXISTS hero1;
DROP TABLE IF EXISTS infosys1;
DROP TABLE IF EXISTS tcs1;
DROP TABLE IF EXISTS tvs1;


/* BAJAJ */

CREATE TABLE bajaj1 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 20 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        )
    END AS `20 Day MA`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 50 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        )
    END AS `50 Day MA`
FROM bajaj_auto;


/* EICHER */

CREATE TABLE eicher1 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 20 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        )
    END AS `20 Day MA`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 50 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        )
    END AS `50 Day MA`
FROM eicher_motors;


/* HERO */

CREATE TABLE hero1 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 20 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        )
    END AS `20 Day MA`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 50 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        )
    END AS `50 Day MA`
FROM hero_motocorp;


/* INFOSYS */

CREATE TABLE infosys1 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 20 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        )
    END AS `20 Day MA`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 50 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        )
    END AS `50 Day MA`
FROM infosys;


/* TCS */

CREATE TABLE tcs1 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 20 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        )
    END AS `20 Day MA`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 50 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        )
    END AS `50 Day MA`
FROM tcs;


/* TVS */

CREATE TABLE tvs1 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 20 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        )
    END AS `20 Day MA`,
    CASE
        WHEN ROW_NUMBER() OVER(ORDER BY `Date`) < 50 THEN NULL
        ELSE AVG(`Close Price`) OVER(
            ORDER BY `Date`
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        )
    END AS `50 Day MA`
FROM tvs_motors;


/* Check Task 1 */

SELECT * FROM bajaj1;
SELECT * FROM eicher1;
SELECT * FROM hero1;
SELECT * FROM infosys1;
SELECT * FROM tcs1;
SELECT * FROM tvs1;


/* =========================================================
   TASK 2
   MASTER STOCK INFO
   ========================================================= */

DROP TABLE IF EXISTS master_stock_info;

CREATE TABLE master_stock_info AS
SELECT
    tcs.`Date`,
    b.`Close Price` AS `Bajaj`,
    tcs.`Close Price` AS `TCS`,
    tvs.`Close Price` AS `TVS`,
    i.`Close Price` AS `Infosys`,
    e.`Close Price` AS `Eicher`,
    h.`Close Price` AS `Hero`
FROM tcs

INNER JOIN eicher_motors e
    ON e.`Date` = tcs.`Date`

INNER JOIN tvs_motors tvs
    ON tvs.`Date` = tcs.`Date`

INNER JOIN hero_motocorp h
    ON h.`Date` = tcs.`Date`

INNER JOIN bajaj_auto b
    ON b.`Date` = tcs.`Date`

INNER JOIN infosys i
    ON i.`Date` = tcs.`Date`

ORDER BY tcs.`Date`;


/* Display master table */

SELECT *
FROM master_stock_info;


/* =========================================================
   TASK 3
   BUY / SELL / HOLD SIGNALS
   ========================================================= */


/* Delete old signal tables */

DROP TABLE IF EXISTS bajaj2;
DROP TABLE IF EXISTS eicher2;
DROP TABLE IF EXISTS hero2;
DROP TABLE IF EXISTS infosys2;
DROP TABLE IF EXISTS tcs2;
DROP TABLE IF EXISTS tvs2;


/* BAJAJ */

CREATE TABLE bajaj2 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN `50 Day MA` IS NULL THEN 'NA'

        WHEN `20 Day MA` > `50 Day MA`
             AND `Previous 20 Day MA` < `Previous 50 Day MA`
        THEN 'BUY'

        WHEN `20 Day MA` < `50 Day MA`
             AND `Previous 20 Day MA` > `Previous 50 Day MA`
        THEN 'SELL'

        ELSE 'HOLD'
    END AS `Signal`
FROM
(
    SELECT
        `Date`,
        `Close Price`,
        `20 Day MA`,
        `50 Day MA`,
        LAG(`20 Day MA`) OVER(ORDER BY `Date`) AS `Previous 20 Day MA`,
        LAG(`50 Day MA`) OVER(ORDER BY `Date`) AS `Previous 50 Day MA`
    FROM bajaj1
) AS x;


/* EICHER */

CREATE TABLE eicher2 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN `50 Day MA` IS NULL THEN 'NA'

        WHEN `20 Day MA` > `50 Day MA`
             AND `Previous 20 Day MA` < `Previous 50 Day MA`
        THEN 'BUY'

        WHEN `20 Day MA` < `50 Day MA`
             AND `Previous 20 Day MA` > `Previous 50 Day MA`
        THEN 'SELL'

        ELSE 'HOLD'
    END AS `Signal`
FROM
(
    SELECT
        `Date`,
        `Close Price`,
        `20 Day MA`,
        `50 Day MA`,
        LAG(`20 Day MA`) OVER(ORDER BY `Date`) AS `Previous 20 Day MA`,
        LAG(`50 Day MA`) OVER(ORDER BY `Date`) AS `Previous 50 Day MA`
    FROM eicher1
) AS x;


/* HERO */

CREATE TABLE hero2 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN `50 Day MA` IS NULL THEN 'NA'

        WHEN `20 Day MA` > `50 Day MA`
             AND `Previous 20 Day MA` < `Previous 50 Day MA`
        THEN 'BUY'

        WHEN `20 Day MA` < `50 Day MA`
             AND `Previous 20 Day MA` > `Previous 50 Day MA`
        THEN 'SELL'

        ELSE 'HOLD'
    END AS `Signal`
FROM
(
    SELECT
        `Date`,
        `Close Price`,
        `20 Day MA`,
        `50 Day MA`,
        LAG(`20 Day MA`) OVER(ORDER BY `Date`) AS `Previous 20 Day MA`,
        LAG(`50 Day MA`) OVER(ORDER BY `Date`) AS `Previous 50 Day MA`
    FROM hero1
) AS x;


/* INFOSYS */

CREATE TABLE infosys2 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN `50 Day MA` IS NULL THEN 'NA'

        WHEN `20 Day MA` > `50 Day MA`
             AND `Previous 20 Day MA` < `Previous 50 Day MA`
        THEN 'BUY'

        WHEN `20 Day MA` < `50 Day MA`
             AND `Previous 20 Day MA` > `Previous 50 Day MA`
        THEN 'SELL'

        ELSE 'HOLD'
    END AS `Signal`
FROM
(
    SELECT
        `Date`,
        `Close Price`,
        `20 Day MA`,
        `50 Day MA`,
        LAG(`20 Day MA`) OVER(ORDER BY `Date`) AS `Previous 20 Day MA`,
        LAG(`50 Day MA`) OVER(ORDER BY `Date`) AS `Previous 50 Day MA`
    FROM infosys1
) AS x;


/* TCS */

CREATE TABLE tcs2 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN `50 Day MA` IS NULL THEN 'NA'

        WHEN `20 Day MA` > `50 Day MA`
             AND `Previous 20 Day MA` < `Previous 50 Day MA`
        THEN 'BUY'

        WHEN `20 Day MA` < `50 Day MA`
             AND `Previous 20 Day MA` > `Previous 50 Day MA`
        THEN 'SELL'

        ELSE 'HOLD'
    END AS `Signal`
FROM
(
    SELECT
        `Date`,
        `Close Price`,
        `20 Day MA`,
        `50 Day MA`,
        LAG(`20 Day MA`) OVER(ORDER BY `Date`) AS `Previous 20 Day MA`,
        LAG(`50 Day MA`) OVER(ORDER BY `Date`) AS `Previous 50 Day MA`
    FROM tcs1
) AS x;


/* TVS */

CREATE TABLE tvs2 AS
SELECT
    `Date`,
    `Close Price`,
    CASE
        WHEN `50 Day MA` IS NULL THEN 'NA'

        WHEN `20 Day MA` > `50 Day MA`
             AND `Previous 20 Day MA` < `Previous 50 Day MA`
        THEN 'BUY'

        WHEN `20 Day MA` < `50 Day MA`
             AND `Previous 20 Day MA` > `Previous 50 Day MA`
        THEN 'SELL'

        ELSE 'HOLD'
    END AS `Signal`
FROM
(
    SELECT
        `Date`,
        `Close Price`,
        `20 Day MA`,
        `50 Day MA`,
        LAG(`20 Day MA`) OVER(ORDER BY `Date`) AS `Previous 20 Day MA`,
        LAG(`50 Day MA`) OVER(ORDER BY `Date`) AS `Previous 50 Day MA`
    FROM tvs1
) AS x;


/* Check Task 3 */

SELECT * FROM bajaj2;
SELECT * FROM eicher2;
SELECT * FROM hero2;
SELECT * FROM infosys2;
SELECT * FROM tcs2;
SELECT * FROM tvs2;


/* =========================================================
   TASK 4
   FUNCTION TO GET SIGNAL
   ========================================================= */

DROP FUNCTION IF EXISTS getSignal;

DELIMITER $$

CREATE FUNCTION getSignal(signal_date DATE)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN

    RETURN COALESCE(
        (
            SELECT `Signal`
            FROM bajaj2
            WHERE `Date` = signal_date
            LIMIT 1
        ),
        'NA'
    );

END $$

DELIMITER ;


/* =========================================================
   TEST getSignal()
   ========================================================= */

SELECT getSignal('2018-06-21') AS `Signal`;

SELECT getSignal('2018-05-29') AS `Signal`;

SELECT getSignal('2018-05-30') AS `Signal`;

SELECT getSignal('2015-01-01') AS `Signal`;


/* =========================================================
   FINAL REQUIRED OUTPUT
   ========================================================= */

SELECT
    `Date`,
    `Close Price`,
    getSignal(`Date`) AS `Signal`
FROM bajaj_auto
ORDER BY `Date`;


/* =========================================================
   CHECK SPECIFIC DATE
   ========================================================= */

SELECT *
FROM bajaj2
WHERE `Date` = '2018-06-21';


/* =========================================================
   TASK 5
   NUMBER OF TIMES BOUGHT AND SOLD
   ========================================================= */


/* BAJAJ */

SELECT *
FROM bajaj2
WHERE `Signal` IN ('BUY', 'SELL');

SELECT
    SUM(CASE WHEN `Signal` = 'BUY' THEN 1 ELSE 0 END) AS `Buy Count`,
    SUM(CASE WHEN `Signal` = 'SELL' THEN 1 ELSE 0 END) AS `Sell Count`
FROM bajaj2;


/* TCS */

SELECT *
FROM tcs2
WHERE `Signal` IN ('BUY', 'SELL');

SELECT
    SUM(CASE WHEN `Signal` = 'BUY' THEN 1 ELSE 0 END) AS `Buy Count`,
    SUM(CASE WHEN `Signal` = 'SELL' THEN 1 ELSE 0 END) AS `Sell Count`
FROM tcs2;


/* EICHER */

SELECT *
FROM eicher2
WHERE `Signal` IN ('BUY', 'SELL');

SELECT
    SUM(CASE WHEN `Signal` = 'BUY' THEN 1 ELSE 0 END) AS `Buy Count`,
    SUM(CASE WHEN `Signal` = 'SELL' THEN 1 ELSE 0 END) AS `Sell Count`
FROM eicher2;


/* TVS */

SELECT *
FROM tvs2
WHERE `Signal` IN ('BUY', 'SELL');

SELECT
    SUM(CASE WHEN `Signal` = 'BUY' THEN 1 ELSE 0 END) AS `Buy Count`,
    SUM(CASE WHEN `Signal` = 'SELL' THEN 1 ELSE 0 END) AS `Sell Count`
FROM tvs2;


/* HERO */

SELECT *
FROM hero2
WHERE `Signal` IN ('BUY', 'SELL');

SELECT
    SUM(CASE WHEN `Signal` = 'BUY' THEN 1 ELSE 0 END) AS `Buy Count`,
    SUM(CASE WHEN `Signal` = 'SELL' THEN 1 ELSE 0 END) AS `Sell Count`
FROM hero2;


/* INFOSYS */

SELECT *
FROM infosys2
WHERE `Signal` IN ('BUY', 'SELL');

SELECT
    SUM(CASE WHEN `Signal` = 'BUY' THEN 1 ELSE 0 END) AS `Buy Count`,
    SUM(CASE WHEN `Signal` = 'SELL' THEN 1 ELSE 0 END) AS `Sell Count`
FROM infosys2;


/* =========================================================
   GETTING THE TREND
   Latest Close Price - First Close Price
   ========================================================= */


/* BAJAJ */

SELECT
    ROUND(
        (SELECT `Close Price`
         FROM bajaj_auto
         ORDER BY `Date` DESC
         LIMIT 1)
        -
        (SELECT `Close Price`
         FROM bajaj_auto
         ORDER BY `Date`
         LIMIT 1),
        2
    ) AS `Trend`;


/* TCS */

SELECT
    ROUND(
        (SELECT `Close Price`
         FROM tcs
         ORDER BY `Date` DESC
         LIMIT 1)
        -
        (SELECT `Close Price`
         FROM tcs
         ORDER BY `Date`
         LIMIT 1),
        2
    ) AS `Trend`;


/* EICHER */

SELECT
    ROUND(
        (SELECT `Close Price`
         FROM eicher_motors
         ORDER BY `Date` DESC
         LIMIT 1)
        -
        (SELECT `Close Price`
         FROM eicher_motors
         ORDER BY `Date`
         LIMIT 1),
        2
    ) AS `Trend`;


/* TVS */

SELECT
    ROUND(
        (SELECT `Close Price`
         FROM tvs_motors
         ORDER BY `Date` DESC
         LIMIT 1)
        -
        (SELECT `Close Price`
         FROM tvs_motors
         ORDER BY `Date`
         LIMIT 1),
        2
    ) AS `Trend`;


/* INFOSYS */

SELECT
    ROUND(
        (SELECT `Close Price`
         FROM infosys
         ORDER BY `Date` DESC
         LIMIT 1)
        -
        (SELECT `Close Price`
         FROM infosys
         ORDER BY `Date`
         LIMIT 1),
        2
    ) AS `Trend`;
    
    


/* =========================================================
   ADDITIONAL INSIGHTS
   PERCENTAGE CHANGE IN STOCK PRICE
   ========================================================= */

SELECT
    'Bajaj' AS `Stock`,
    ROUND(
        (
            (SELECT `Close Price`
             FROM bajaj_auto
             ORDER BY `Date` DESC
             LIMIT 1)
            -
            (SELECT `Close Price`
             FROM bajaj_auto
             ORDER BY `Date`
             LIMIT 1)
        )
        /
        (SELECT `Close Price`
         FROM bajaj_auto
         ORDER BY `Date`
         LIMIT 1)
        * 100,
        2
    ) AS `Percentage Change`

UNION ALL

SELECT
    'Eicher',
    ROUND(
        (
            (SELECT `Close Price`
             FROM eicher_motors
             ORDER BY `Date` DESC
             LIMIT 1)
            -
            (SELECT `Close Price`
             FROM eicher_motors
             ORDER BY `Date`
             LIMIT 1)
        )
        /
        (SELECT `Close Price`
         FROM eicher_motors
         ORDER BY `Date`
         LIMIT 1)
        * 100,
        2
    )

UNION ALL

SELECT
    'Hero',
    ROUND(
        (
            (SELECT `Close Price`
             FROM hero_motocorp
             ORDER BY `Date` DESC
             LIMIT 1)
            -
            (SELECT `Close Price`
             FROM hero_motocorp
             ORDER BY `Date`
             LIMIT 1)
        )
        /
        (SELECT `Close Price`
         FROM hero_motocorp
         ORDER BY `Date`
         LIMIT 1)
        * 100,
        2
    )

UNION ALL

SELECT
    'Infosys',
    ROUND(
        (
            (SELECT `Close Price`
             FROM infosys
             ORDER BY `Date` DESC
             LIMIT 1)
            -
            (SELECT `Close Price`
             FROM infosys
             ORDER BY `Date`
             LIMIT 1)
        )
        /
        (SELECT `Close Price`
         FROM infosys
         ORDER BY `Date`
         LIMIT 1)
        * 100,
        2
    )

UNION ALL

SELECT
    'TCS',
    ROUND(
        (
            (SELECT `Close Price`
             FROM tcs
             ORDER BY `Date` DESC
             LIMIT 1)
            -
            (SELECT `Close Price`
             FROM tcs
             ORDER BY `Date`
             LIMIT 1)
        )
        /
        (SELECT `Close Price`
         FROM tcs
         ORDER BY `Date`
         LIMIT 1)
        * 100,
        2
    )

UNION ALL

SELECT
    'TVS',
    ROUND(
        (
            (SELECT `Close Price`
             FROM tvs_motors
             ORDER BY `Date` DESC
             LIMIT 1)
            -
            (SELECT `Close Price`
             FROM tvs_motors
             ORDER BY `Date`
             LIMIT 1)
        )
        /
        (SELECT `Close Price`
         FROM tvs_motors
         ORDER BY `Date`
         LIMIT 1)
        * 100,
        2
    );
    
    
    /* =========================================================
   BUY / SELL / HOLD PERCENTAGES
   EXCLUDING NA
   ========================================================= */

SELECT
    'Bajaj' AS `Stock`,
    ROUND(
        SUM(`Signal` = 'BUY') /
        SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100,
        2
    ) AS `BUY %`,
    ROUND(
        SUM(`Signal` = 'SELL') /
        SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100,
        2
    ) AS `SELL %`,
    ROUND(
        SUM(`Signal` = 'HOLD') /
        SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100,
        2
    ) AS `HOLD %`
FROM bajaj2

UNION ALL

SELECT
    'Eicher',
    ROUND(SUM(`Signal` = 'BUY') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'SELL') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'HOLD') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2)
FROM eicher2

UNION ALL

SELECT
    'Hero',
    ROUND(SUM(`Signal` = 'BUY') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'SELL') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'HOLD') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2)
FROM hero2

UNION ALL

SELECT
    'Infosys',
    ROUND(SUM(`Signal` = 'BUY') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'SELL') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'HOLD') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2)
FROM infosys2

UNION ALL

SELECT
    'TCS',
    ROUND(SUM(`Signal` = 'BUY') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'SELL') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'HOLD') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2)
FROM tcs2

UNION ALL

SELECT
    'TVS',
    ROUND(SUM(`Signal` = 'BUY') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'SELL') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2),
    ROUND(SUM(`Signal` = 'HOLD') /
          SUM(`Signal` IN ('BUY','SELL','HOLD')) * 100, 2)
FROM tvs2;



/* =========================================================
   OVERALL STOCK PERFORMANCE
   ========================================================= */

SELECT
    `Stock`,
    `Percentage Change`
FROM
(
    SELECT
        'Bajaj' AS `Stock`,
        ROUND(
            (
                (SELECT `Close Price`
                 FROM bajaj_auto
                 ORDER BY `Date` DESC
                 LIMIT 1)
                -
                (SELECT `Close Price`
                 FROM bajaj_auto
                 ORDER BY `Date`
                 LIMIT 1)
            )
            /
            (SELECT `Close Price`
             FROM bajaj_auto
             ORDER BY `Date`
             LIMIT 1) * 100,
            2
        ) AS `Percentage Change`

    UNION ALL

    SELECT
        'Eicher',
        ROUND(
            (
                (SELECT `Close Price`
                 FROM eicher_motors
                 ORDER BY `Date` DESC
                 LIMIT 1)
                -
                (SELECT `Close Price`
                 FROM eicher_motors
                 ORDER BY `Date`
                 LIMIT 1)
            )
            /
            (SELECT `Close Price`
             FROM eicher_motors
             ORDER BY `Date`
             LIMIT 1) * 100,
            2
        )

    UNION ALL

    SELECT
        'Hero',
        ROUND(
            (
                (SELECT `Close Price`
                 FROM hero_motocorp
                 ORDER BY `Date` DESC
                 LIMIT 1)
                -
                (SELECT `Close Price`
                 FROM hero_motocorp
                 ORDER BY `Date`
                 LIMIT 1)
            )
            /
            (SELECT `Close Price`
             FROM hero_motocorp
             ORDER BY `Date`
             LIMIT 1) * 100,
            2
        )

    UNION ALL

    SELECT
        'Infosys',
        ROUND(
            (
                (SELECT `Close Price`
                 FROM infosys
                 ORDER BY `Date` DESC
                 LIMIT 1)
                -
                (SELECT `Close Price`
                 FROM infosys
                 ORDER BY `Date`
                 LIMIT 1)
            )
            /
            (SELECT `Close Price`
             FROM infosys
             ORDER BY `Date`
             LIMIT 1) * 100,
            2
        )

    UNION ALL

    SELECT
        'TCS',
        ROUND(
            (
                (SELECT `Close Price`
                 FROM tcs
                 ORDER BY `Date` DESC
                 LIMIT 1)
                -
                (SELECT `Close Price`
                 FROM tcs
                 ORDER BY `Date`
                 LIMIT 1)
            )
            /
            (SELECT `Close Price`
             FROM tcs
             ORDER BY `Date`
             LIMIT 1) * 100,
            2
        )

    UNION ALL

    SELECT
        'TVS',
        ROUND(
            (
                (SELECT `Close Price`
                 FROM tvs_motors
                 ORDER BY `Date` DESC
                 LIMIT 1)
                -
                (SELECT `Close Price`
                 FROM tvs_motors
                 ORDER BY `Date`
                 LIMIT 1)
            )
            /
            (SELECT `Close Price`
             FROM tvs_motors
             ORDER BY `Date`
             LIMIT 1) * 100,
            2
        )
) AS stock_performance
ORDER BY `Percentage Change` DESC;