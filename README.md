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

The evaluation results are stored in: ```text outputs/model_metrics.csv


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
 ,```text outputs/model_metrics.csv


# Inventory Optimization

The predicted demand is used to support inventory planning.

The system calculates recommended inventory using predicted future demand and safety stock.

Inventory Formula
Recommended Stock =
Predicted 7-Day Demand + Safety Stock
Inventory Components
Predicted Demand

Expected product demand for the upcoming 7-day period.

# Safety Stock

Additional inventory maintained to handle demand uncertainty.

## Recommended Stock

The suggested inventory level based on predicted demand and safety stock.

## Demand Risk

The system categorizes demand into:

High Demand
Normal
Low Demand
Safety Stock

Safety stock provides additional inventory protection against demand variability.

The calculated safety stock is incorporated into the inventory recommendation.

The inventory recommendations are stored in:

outputs/inventory_recommendations.csv

# Streamlit Application

An interactive Streamlit web application was developed for exploring demand forecasts and inventory recommendations.

## Dashboard Features

Users can:

Select a product family
View forecasted demand
View recommended stock
View safety stock
View demand risk
View future demand trends
View daily forecast values
View inventory recommendations
Live Dashboard

👉 Open Live Streamlit Dashboard : https://nithin-demand-forecasting-2026.streamlit.app

# FastAPI REST API

A FastAPI REST API was developed to expose the trained Machine Learning forecasting system.

## API Endpoints
## Home Endpoint
GET /

Used to verify that the API is running.

## Product Family Endpoint
GET /families

Returns the available product families.

## Forecast Endpoint
POST /forecast

Generates a future demand forecast for a selected product family.

Example Request
{
    "family": "AUTOMOTIVE"
}
Example Response
{
    "family": "AUTOMOTIVE",
    "forecasted_7_day_demand": 1679.96,
    "daily_forecast": [
        {
            "date": "2017-08-16",
            "predicted_sales": 293.06
        },
        {
            "date": "2017-08-17",
            "predicted_sales": 232.48
        },
        {
            "date": "2017-08-18",
            "predicted_sales": 253.95
        }
    ],
    "recommended_stock": 2154.17,
    "safety_stock": 474.21,
    "demand_risk": "Low Demand"
}

# Swagger API Documentation

FastAPI automatically provides interactive API documentation.

The Swagger documentation can be used to test the forecasting API.

👉 Open Swagger Documentation : https://nithin-retail-demand-api.onrender.com/docs

# Docker

The FastAPI backend was containerized using Docker.

## Docker Configuration

The Docker setup:

Uses a Python runtime
Creates an application working directory
Copies the application files
Installs required dependencies
Exposes the API port
Runs the FastAPI application using Uvicorn
Dockerfile

## The project contains:

## Dockerfile

Docker provides a consistent environment for running and deploying the backend application.

## Cloud Deployment

The project was deployed using cloud platforms.

## Streamlit Cloud

The Streamlit dashboard is deployed using Streamlit Cloud.

👉 Open Live Dashboard : https://nithin-demand-forecasting-2026.streamlit.app

## Render

The FastAPI backend is deployed using Render.

👉 Open FastAPI Backend : https://nithin-retail-demand-api.onrender.com/

# Project Architecture

                         Retail Sales Dataset
                                  |
                                  ↓
                         SQL Data Processing
                                  |
                                  ↓
                        Exploratory Data Analysis
                                  |
                                  ↓
                         Time-Series Analysis
                                  |
                                  ↓
                         Feature Engineering
                                  |
                                  ↓
                        Machine Learning Models
                                  |
                    +-------------+-------------+
                    |                           |
                    ↓                           ↓
             Linear Regression          Random Forest
                    |                           |
                    +-------------+-------------+
                                  |
                                  ↓
                              XGBoost
                                  |
                                  ↓
                         Model Evaluation
                                  |
                                  ↓
                       Future Demand Forecast
                                  |
                                  ↓
                         Inventory Planning
                    +-------------+-------------+
                    |             |             |
                    ↓             ↓             ↓
              Safety Stock  Recommended Stock  Demand Risk
                    |             |             |
                    +-------------+-------------+
                                  |
                    +-------------+-------------+
                    |                           |
                    ↓                           ↓
              Streamlit Dashboard          FastAPI REST API
                    |                           |
                    ↓                           ↓
             Streamlit Cloud                  Render


# Application Flow

Retail Sales Data
        ↓
SQL Data Processing
        ↓
Exploratory Data Analysis
        ↓
Time-Series Analysis
        ↓
Feature Engineering
        ↓
Machine Learning Model
        ↓
Future Demand Forecast
        ↓
Inventory Planning
        ↓
Safety Stock
        ↓
Recommended Stock
        ↓
Demand Risk
        ↓
Streamlit Dashboard
        ↓
FastAPI REST API

# Project Structure

Retail-demand-forecasting/
│
├── data/
│
├── models/
│
├── outputs/
│
├── screenshots/
│
├── sql/
│
├── api.py
├── app.py
├── Dockerfile
├── requirements.txt
├── README.md
│
└── Retail_Demand_Forecasting_&_Inventory_Optimization.ipynb


# Output Files

The project generates multiple outputs used throughout the forecasting and inventory workflow.

outputs/
│
├── future_demand_forecasts.csv
├── model_metrics.csv
├── inventory_recommendations.csv
├── forecast_model_feature_importance.csv
└── retail_forecasting_predictions.csv
Future Demand Forecasts
outputs/future_demand_forecasts.csv

Contains future predicted sales for product families.

## Model Metrics
outputs/model_metrics.csv

Contains model evaluation results.

## Inventory Recommendations
outputs/inventory_recommendations.csv

Contains recommended stock, safety stock, and demand risk information.

# Jupyter Notebook

The complete Machine Learning workflow is available in the Jupyter Notebook.

The notebook contains:

## Data loading
Data preprocessing
SQL analysis
Exploratory Data Analysis
Time-series analysis
Feature engineering
Model training
Model evaluation
Demand forecasting
Inventory recommendation
Notebook
Retail_Demand_Forecasting_&_Inventory_Optimization.ipynb
Screenshots

## Project screenshots are available in:

screenshots/

The screenshots demonstrate:

Streamlit dashboard
Demand forecasting
Inventory recommendation
FastAPI backend
Swagger documentation
Forecast outputs
Technologies Used
Programming Language
Python
SQL
Data Analysis
Pandas
NumPy
Data Visualization
Matplotlib
Seaborn
Machine Learning
Scikit-learn
XGBoost
Linear Regression
Random Forest Regressor
Application Development
Streamlit
FastAPI
Uvicorn
Deployment & DevOps
Docker
Streamlit Cloud
Render
Git
GitHub
Development Environment
Jupyter Notebook
Google Colab
VS Code
Installation
Clone the Repository
git clone https://github.com/Nithin10180/Retail-demand-forecasting.git
Navigate to the Project Directory
cd Retail-demand-forecasting
Create a Virtual Environment
python -m venv venv
Activate Virtual Environment on Windows
venv\Scripts\activate
Install Dependencies
pip install -r requirements.txt
Run Streamlit Application

Run the following command:

streamlit run app.py

The Streamlit dashboard will open in your browser.

Run FastAPI

Start the FastAPI server using:

uvicorn api:app --host 0.0.0.0 --port 8000

## The API will be available at:

http://127.0.0.1:8000

## Swagger documentation:

http://127.0.0.1:8000/docs
Run with Docker
Build Docker Image
docker build -t retail-demand-api .
Run Docker Container
docker run -p 8000:8000 retail-demand-api

## The API will then be available at:

http://localhost:8000
Key Features
End-to-end Machine Learning workflow
Retail demand forecasting
SQL-based data processing
Time-series analysis
Lag feature engineering
Rolling-window feature engineering
Multiple Machine Learning models
XGBoost forecasting
7-day future demand prediction
Safety stock calculation
Recommended inventory calculation
Demand risk identification
Interactive Streamlit dashboard
FastAPI REST API
Swagger API documentation
Docker containerization
Cloud deployment
Business Value

This project demonstrates how Machine Learning can support retail inventory planning.

## The system can help businesses:

Estimate future product demand
Reduce the risk of stock-outs
Reduce unnecessary overstocking
Understand product-family demand
Support inventory planning
Automate demand forecasting
Identify demand risk
Expose ML predictions through an API
Future Improvements

## The project can be further improved by adding:

LSTM-based demand forecasting
SARIMA-based forecasting
Automated model retraining
Real-time inventory updates
Store-specific forecasting
Product-level forecasting
Advanced demand uncertainty estimation
Automated stock-out alerts
Real-time database integration
ML model monitoring
Automated forecasting pipelines
What This Project Demonstrates

## This project demonstrates practical experience in:

Machine Learning
Time-Series Forecasting
Feature Engineering
SQL
Data Analysis
Data Visualization
Inventory Analytics
Model Evaluation
REST API Development
Streamlit Application Development
Docker
Cloud Deployment
End-to-End ML Engineering
Learning Outcomes

## Through this project, I gained practical experience in:

Working with retail sales datasets
Preparing and analyzing data using SQL
Understanding time-series demand patterns
Creating lag and rolling features
Training Machine Learning forecasting models
Evaluating regression models
Connecting ML predictions with business decisions
Building interactive ML applications
Developing production-style APIs
Containerizing applications using Docker
Deploying Machine Learning applications to the cloud

# Author
## Nithin Thokkala

## Machine Learning | Data Science | Python | SQL

## Interested in:

Machine Learning
Data Science
Artificial Intelligence
Generative AI
LLMs
RAG Systems

## GitHub: Nithin10180

License

This project is available for educational and portfolio purposes.

# Project Links
## Live Dashboard

👉 Streamlit Dashboard : https://nithin-demand-forecasting-2026.streamlit.app/

## FastAPI 

👉 FastAPI Backend : https://nithin-retail-demand-api.onrender.com

## Swagger

👉 Swagger Documentation : : https://nithin-retail-demand-api.onrender.com/docs

## GitHub

👉 GitHub Repository : https://github.com/Nithin10180/Retail-demand-forecasting

Done by Nithin

Nithin Thokkala

Retail Demand Forecasting & Inventory Optimization

Machine Learning • SQL • XGBoost • Streamlit • FastAPI • Docker • Cloud Deployment

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
