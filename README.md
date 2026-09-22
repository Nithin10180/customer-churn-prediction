# Retail Demand Forecasting & Inventory Optimization

An end-to-end **Machine Learning project** for forecasting future retail demand and supporting inventory planning using **Python, SQL, XGBoost, Streamlit, FastAPI, Docker, and Cloud Deployment**.

---

# Live Project

## Live Streamlit Dashboard

👉 [Open Live Dashboard](https://nithin-demand-forecasting-2026.streamlit.app)

Interactive dashboard for selecting a product family and viewing demand forecasts, safety stock, recommended inventory, demand risk, and future demand visualization.

## Live FastAPI Backend

👉 [Open FastAPI](https://nithin-retail-demand-api.onrender.com)

REST API for generating future demand forecasts and inventory recommendations.

## Swagger API Documentation

👉 [Open Swagger Documentation](https://nithin-retail-demand-api.onrender.com/docs)

Interactive API documentation for testing the forecasting endpoints.

## GitHub Repository

👉 [View GitHub Repository](https://github.com/Nithin10180/Retail-demand-forecasting)

---

# Project Overview

Retail businesses need to maintain sufficient inventory to satisfy customer demand while avoiding unnecessary overstocking.

Future demand can be difficult to estimate because sales are affected by:

- Historical sales patterns
- Seasonality
- Promotions
- Holidays
- Store-level differences
- Product-family behavior
- External factors

The objective of this project is to build an **end-to-end Retail Demand Forecasting and Inventory Optimization System** that can:

- Analyze historical retail sales
- Identify demand patterns
- Perform SQL-based data analysis
- Create time-series forecasting features
- Train Machine Learning models
- Forecast future product demand
- Generate 7-day demand forecasts
- Calculate safety stock
- Recommend inventory levels
- Identify demand risk
- Provide an interactive dashboard
- Expose predictions through a REST API
- Containerize the API using Docker
- Deploy the applications to the cloud

---

# Problem Statement

Retailers need to determine how much inventory should be available for upcoming periods.

Ordering too little inventory can result in:

- Stock-outs
- Lost sales
- Poor customer experience

Ordering too much inventory can result in:

- Excess inventory
- Higher storage costs
- Increased operational costs

Retailers therefore need a reliable way to estimate future demand before making inventory decisions.

The objective of this project is to:

**Predict future product demand from historical sales patterns and use those predictions to support better inventory planning.**

---

# Project Objectives

- Forecast future retail demand for individual product families
- Analyze historical sales patterns and trends
- Perform SQL-based data preparation and analysis
- Perform Exploratory Data Analysis
- Analyze time-series demand patterns
- Create lag-based forecasting features
- Create rolling-window features
- Compare multiple Machine Learning models
- Generate 7-day future demand forecasts
- Calculate safety stock
- Calculate recommended inventory levels
- Identify demand risk
- Build an interactive Streamlit dashboard
- Develop a FastAPI REST API
- Containerize the backend using Docker
- Deploy the forecasting application to the cloud

---

# Dataset

The project uses historical retail sales data containing information about:

- Sales date
- Store number
- Product family
- Daily sales
- Promotion information

Additional supporting information was used for the analytical workflow, including:

- Store transactions
- Holiday information
- Oil price information

## Dataset Features

| Category | Features |
|---|---|
| Date Information | `date` |
| Store Information | `store_nbr` |
| Product Information | `family` |
| Sales Information | `sales` |
| Promotion Information | `onpromotion` |

## Dataset Coverage

- **Date Range:** 2013-01-01 to 2017-08-15
- **Stores:** 54
- **Product Families:** 33
- **Total Historical Sales:** 1,073,645,177.20

## Major Product Families

Some of the major product families analyzed include:

- GROCERY I
- BEVERAGES
- PRODUCE
- CLEANING
- DAIRY

---

# SQL Data Processing

SQL was used to prepare and analyze the retail sales data before applying Machine Learning.

The SQL workflow includes:

- Daily sales aggregation
- Weekly sales analysis
- Product-family analysis
- Store-level analysis
- Date-based analysis
- Sales trend analysis
- Promotion-related analysis

SQL was used as the data preparation and business analysis layer of the forecasting pipeline.

---

# Exploratory Data Analysis

Exploratory Data Analysis was performed to understand the structure and behavior of the historical retail sales data.

## Analysis Performed

- Daily sales trends
- Monthly sales trends
- Product-family sales
- Store-level sales
- Promotion impact
- Seasonal patterns
- Sales distribution
- Demand variation
- Product-family demand behavior

## Visualization

The project uses visualizations to identify important demand patterns.

Tools used:

- **Matplotlib**
- **Seaborn**
- **Pandas**

---

# Time-Series Analysis

Retail demand is strongly dependent on time.

The project therefore considers the chronological relationship between historical observations and future demand.

Important temporal patterns include:

- Previous-day demand
- Weekly demand patterns
- Monthly demand patterns
- Seasonal behavior
- Promotion effects
- Holiday effects

The dataset was split chronologically rather than randomly to preserve the time-series structure.

---

# Feature Engineering

Time-series and business-related features were created to improve demand forecasting.

## Calendar Features

- `day_of_week`
- `day_of_month`
- `week_of_year`
- `month`
- `year`

## Lag Features

- `lag_1`
- `lag_7`
- `lag_14`
- `lag_28`

Lag features allow the model to learn from previous demand observations.

## Rolling Features

- `rolling_mean_7`
- `rolling_mean_14`
- `rolling_mean_28`

Rolling features help capture short-term and medium-term demand trends.

## Additional Features

- Promotion count
- Oil price
- Holiday indicator

---

# Machine Learning

Multiple Machine Learning models were explored for demand forecasting.

## Linear Regression

**Linear Regression** was implemented as a baseline regression model.

It provides a simple benchmark for comparing more advanced forecasting models.

## Random Forest

**Random Forest Regressor** was implemented as a tree-based Machine Learning model.

It can capture nonlinear relationships between demand and the engineered forecasting features.

## XGBoost

**XGBoost Regressor** was used as the final forecasting model.

XGBoost is well suited for learning nonlinear relationships between historical demand, time-based features, promotions, and other business variables.

---

# Model Evaluation

The forecasting models were evaluated using standard regression metrics.

## Evaluation Metrics

- **MAE**
- **MSE**
- **RMSE**

## Model Comparison

The models were compared based on their forecasting errors.

The evaluation results are stored in:


# Demand Forecasting

The trained Machine Learning model predicts future product-family sales using historical demand patterns and engineered time-series features.

Forecast Horizon

The system generates:

7-day future demand forecasts

Forecast Output

The forecast output contains:

Date
Product family
Predicted sales

The generated forecasts are stored in:

outputs/future_demand_forecasts.csv

```text
outputs/model_metrics.csv
