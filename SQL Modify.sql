SELECT COUNT(*) 
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT *
FROM `WA_Fn-UseC_-Telco-Customer-Churn`
LIMIT 5;

INSERT INTO customers (
    customer_id,
    gender,
    senior_citizen,
    partner,
    dependents
)
SELECT
    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT COUNT(*) FROM customers;

SELECT customerID, COUNT(*) AS count
FROM `WA_Fn-UseC_-Telco-Customer-Churn`
GROUP BY customerID
HAVING COUNT(*) > 1;

SELECT COUNT(*)
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT COUNT(DISTINCT customerID)
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT *
FROM `WA_Fn-UseC_-Telco-Customer-Churn`
LIMIT 5;

SELECT COUNT(*) 
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

DROP TABLE `WA_Fn-UseC_-Telco-Customer-Churn`;

INSERT INTO subscriptions (
    customer_id,
    tenure,
    phone_service,
    multiple_lines,
    internet_service,
    online_security,
    online_backup,
    device_protection,
    tech_support,
    streaming_tv,
    streaming_movies,
    contract,
    paperless_billing,
    payment_method
)
SELECT
    customerID,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT COUNT(*) FROM subscriptions;

INSERT INTO billing (
    customer_id,
    monthly_charges,
    total_charges
)
SELECT
    customerID,
    MonthlyCharges,
    TotalCharges
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT COUNT(*) FROM billing;

INSERT INTO customer_status (
    customer_id,
    churn
)
SELECT
    customerID,
    Churn
FROM `WA_Fn-UseC_-Telco-Customer-Churn`;

SELECT COUNT(*) FROM customer_status;

SELECT COUNT(*) AS customers_count FROM customers;

SELECT COUNT(*) AS subscriptions_count FROM subscriptions;

SELECT COUNT(*) AS billing_count FROM billing;

SELECT COUNT(*) AS status_count FROM customer_status;

CREATE VIEW customer_churn_data AS
SELECT
    c.customer_id,
    c.gender,
    c.senior_citizen,
    c.partner,
    c.dependents,

    s.tenure,
    s.phone_service,
    s.multiple_lines,
    s.internet_service,
    s.online_security,
    s.online_backup,
    s.device_protection,
    s.tech_support,
    s.streaming_tv,
    s.streaming_movies,
    s.contract,
    s.paperless_billing,
    s.payment_method,

    b.monthly_charges,
    b.total_charges,

    cs.churn

FROM customers c
JOIN subscriptions s
    ON c.customer_id = s.customer_id
JOIN billing b
    ON c.customer_id = b.customer_id
JOIN customer_status cs
    ON c.customer_id = cs.customer_id;
    
SELECT * 
FROM customer_churn_data
LIMIT 10;

SELECT COUNT(*) AS total_customers
FROM customer_churn_data;

SELECT churn, COUNT(*) AS count
FROM customer_churn_data
GROUP BY churn;

SELECT
    churn,
    COUNT(*) AS customers,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn_data), 2) AS percentage
FROM customer_churn_data
GROUP BY churn;

SELECT
    contract,
    churn,
    COUNT(*) AS customers
FROM customer_churn_data
GROUP BY contract, churn
ORDER BY contract, churn;

SELECT
    contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY contract
ORDER BY churn_rate DESC;

SELECT
    internet_service,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY internet_service
ORDER BY churn_rate DESC;

SELECT
    payment_method,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY payment_method
ORDER BY churn_rate DESC;

SELECT
    customer_id,
    contract,
    tenure,
    monthly_charges,
    total_charges,
    churn
FROM customer_churn_data
WHERE churn = 'Yes'
ORDER BY monthly_charges DESC
LIMIT 20;

SELECT
    customer_id,
    tenure,
    monthly_charges,
    contract,
    internet_service,
    churn
FROM customer_churn_data
WHERE tenure <= 12
  AND monthly_charges >= 80
ORDER BY monthly_charges DESC;

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY tenure_group
ORDER BY churn_rate DESC;

SELECT
    senior_citizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY senior_citizen;

SELECT
    tech_support,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY tech_support
ORDER BY churn_rate DESC;

SELECT
    online_security,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_data
GROUP BY online_security
ORDER BY churn_rate DESC;

SELECT *
FROM customer_churn_data;