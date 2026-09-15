# Customer Churn Prediction & Retention Analytics

An end-to-end Machine Learning project for predicting customer churn, identifying high-risk customers, and supporting customer retention decisions.

This project combines Machine Learning, Exploratory Data Analysis, Power BI analytics, Streamlit, FastAPI, Docker, and GitHub to build a complete customer churn prediction workflow.

---

# Project Overview

Customer churn is a major challenge for subscription-based businesses. Losing customers directly affects revenue and long-term business growth.

The objective of this project is to build a Machine Learning system that can:

- Predict whether a customer is likely to churn
- Estimate customer churn risk
- Identify high-risk customers
- Analyze the major patterns associated with churn
- Support customer retention decisions
- Provide an interactive prediction interface
- Expose the trained model through a REST API
- Containerize the API using Docker
- Present business insights through Power BI

The project follows an end-to-end workflow from data analysis and model development to application deployment.

---

# Problem Statement

Businesses often have large amounts of customer data but cannot easily identify which customers are most likely to leave.

A churn prediction system can help businesses identify customers at higher risk and take proactive retention actions before the customer leaves.

This project uses customer demographic, service, contract, tenure, billing, and payment information to predict customer churn.

---

# Project Objectives

- Perform Exploratory Data Analysis on customer data
- Understand customer churn patterns
- Clean and preprocess the dataset
- Handle numerical and categorical features
- Build Machine Learning classification models
- Compare Logistic Regression and Random Forest
- Evaluate model performance
- Save the trained Machine Learning model
- Build a Streamlit prediction application
- Build a FastAPI REST API
- Containerize the API using Docker
- Create a Power BI churn and retention analytics dashboard
- Identify high-risk customers and potential revenue at risk

---

# Dataset

The project uses customer-level telecommunications data containing information about:

- Customer demographics
- Customer tenure
- Phone services
- Internet services
- Online services
- Contract information
- Billing information
- Payment methods
- Customer churn

## Main Features

| Category | Features |
|---|---|
| Customer Information | customerID, gender, SeniorCitizen |
| Demographics | Partner, Dependents |
| Account | tenure |
| Phone Services | PhoneService, MultipleLines |
| Internet Services | InternetService |
| Online Services | OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport |
| Streaming Services | StreamingTV, StreamingMovies |
| Contract | Contract |
| Billing | PaperlessBilling, MonthlyCharges, TotalCharges |
| Payment | PaymentMethod |
| Target | Churn |

---

# Exploratory Data Analysis

Exploratory Data Analysis was performed to understand the structure and behavior of the customer dataset.

The analysis focused on:

- Customer churn distribution
- Customer tenure
- Monthly charges
- Total charges
- Contract types
- Payment methods
- Internet service types
- Customer service subscriptions
- Demographic characteristics
- Churn patterns across different customer segments

Visualization techniques were used to identify patterns and relationships between customer characteristics and churn behavior.

---

# Data Preprocessing

The dataset contains both numerical and categorical variables.

## Numerical Features

- SeniorCitizen
- tenure
- MonthlyCharges
- TotalCharges

## Categorical Features

- gender
- Partner
- Dependents
- PhoneService
- MultipleLines
- InternetService
- OnlineSecurity
- OnlineBackup
- DeviceProtection
- TechSupport
- StreamingTV
- StreamingMovies
- Contract
- PaperlessBilling
- PaymentMethod
- customerID

Categorical variables were converted into machine-readable representations using One-Hot Encoding.

A Scikit-learn preprocessing pipeline was used to apply the transformations consistently during model training and prediction.

---

# Machine Learning Models

Two classification approaches were implemented.

## 1. Logistic Regression

Logistic Regression was used as a baseline classification model for predicting whether a customer would churn.

The preprocessing and classification steps were combined into a Machine Learning pipeline.

## 2. Random Forest

Random Forest was implemented as the main tree-based classification model.

The model was configured with:

- 200 decision trees
- Balanced class weighting

Balanced class weighting was used to give additional importance to the minority churn class.

---

# Model Evaluation

The models were evaluated using multiple classification metrics.

## Evaluation Metrics

- Accuracy
- ROC-AUC
- Confusion Matrix

## Confusion Matrix

The confusion matrix was used to understand:

- True Positives
- True Negatives
- False Positives
- False Negatives

This is particularly useful for churn prediction because incorrectly classifying a customer who is actually going to churn can result in a missed retention opportunity.

---

# Model Persistence

After training, the Machine Learning model was saved using Joblib.

```text
customer_churn_model.pkl

The saved model can be loaded by the Streamlit application and FastAPI backend without retraining the model.

Power BI Customer Churn & Retention Analytics

Power BI was used to convert the Machine Learning predictions into business-oriented insights.

The dashboard focuses on:

Customer churn risk
Actual churn
Predicted churn probability
High-risk customers
Contract-level churn
Customer segmentation
Revenue at risk
Retention recommendations
Customer-level risk prioritization
Business Insights

The Power BI analysis identified several important patterns.

Customer Risk

The analyzed dashboard dataset contains:

Customers analyzed: 1,409
Actual churned customers: 374
Actual churn rate: 26.54%
Average churn probability: 26.76%
High-risk customers: 91
Medium-risk customers: 347
Low-risk customers: 971
Contract Analysis

Month-to-month customers showed the highest churn risk.

Month-to-month actual churn rate: 42.6%
Month-to-month predicted churn probability: approximately 43.0%

Customers with one-year and two-year contracts showed substantially lower churn rates.

Payment Method Analysis

Electronic check customers showed the highest actual churn rate:

Electronic check churn rate: 43.5%

This segment can therefore be considered an important area for retention analysis.

Internet Service Analysis

Fiber optic customers showed the highest predicted churn probability among the analyzed internet-service categories:

Fiber optic predicted churn probability: approximately 43.0%
High-Risk Customer Analysis

The dashboard identifies 91 customers as high-risk.

The high-risk segment represents approximately 6.5% of the analyzed customer population.

The monthly revenue associated with high-risk customers is approximately:

7,654.55

This allows the business to prioritize customers based on both churn risk and potential financial impact.

Customer Risk Prioritization

The project goes beyond simply predicting churn.

Customers are categorized into risk levels:

High Risk
Medium Risk
Low Risk

The system also provides retention-oriented recommendations.

Example:

High Risk
↓
Identify customer
↓
Analyze churn drivers
↓
Estimate revenue at risk
↓
Prioritize retention action

Example high-risk customer records include churn probabilities above 80%, with common drivers involving short tenure, month-to-month contracts, and fiber optic internet service.

Streamlit Application

An interactive Streamlit application was developed for real-time customer churn prediction.

The application allows users to enter customer information including:

Customer ID
Gender
Senior citizen status
Partner
Dependents
Tenure
Phone service
Multiple lines
Internet service
Online security
Online backup
Device protection
Technical support
Streaming TV
Streaming movies
Contract
Paperless billing
Payment method
Monthly charges
Total charges

After entering the customer information, the trained model generates a churn prediction.

Prediction Output

The application returns either:

Customer is likely to churn

or:

Customer is unlikely to churn
FastAPI REST API

A FastAPI backend was developed to expose the trained Machine Learning model through a REST API.

API Endpoints
Root Endpoint
GET /

Used to verify that the API is running.

Prediction Endpoint
POST /predict

The endpoint accepts customer information and returns a churn prediction.

Example Response
{
    "prediction": 0,
    "result": "Customer is unlikely to churn"
}

Where:

0 = Unlikely to churn
1 = Likely to churn

FastAPI also provides interactive API documentation through Swagger UI.

http://127.0.0.1:8000/docs
Docker

The FastAPI application was containerized using Docker.

The Docker setup:

Uses Python 3.11
Creates an application working directory
Copies the trained Machine Learning model
Copies the FastAPI application
Installs required dependencies
Exposes port 8000
Runs the API using Uvicorn
Dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY customer_churn_model.pkl .
COPY api.py .

RUN pip install --no-cache-dir fastapi uvicorn pandas scikit-learn joblib

EXPOSE 8000

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]
Project Architecture
                         Customer Dataset
                                |
                                v
                       Data Preprocessing
                                |
                                v
                              EDA
                                |
                                v
                      Feature Transformation
                                |
                                v
                       Machine Learning
                                |
                    +-----------+-----------+
                    |                       |
                    v                       v
             Logistic Regression      Random Forest
                    |                       |
                    +-----------+-----------+
                                |
                                v
                         Model Evaluation
                                |
                                v
                    Saved ML Model (.pkl)
                                |
                 +--------------+--------------+
                 |                             |
                 v                             v
             Streamlit                    FastAPI
             Web App                     REST API
                                               |
                                               v
                                            Docker

                                |
                                v
                              Power BI
                                |
                                v
                    Churn & Retention Analytics
                                |
                                v
                  Risk Prioritization & Insights
Project Structure
customer-churn-prediction/
│
├── api.py
├── app.py
├── customer_churn_model.pkl
├── Dockerfile
├── requirements.txt
├── README.md
├── LICENSE
└── .gitignore
Technologies Used
Programming Language
Python
Data Analysis
Pandas
NumPy
Matplotlib
Seaborn
Machine Learning
Scikit-learn
Logistic Regression
Random Forest
ColumnTransformer
OneHotEncoder
Application Development
Streamlit
FastAPI
Uvicorn
Deployment & DevOps
Docker
Git
GitHub
Business Intelligence
Power BI
Model Persistence
Joblib
Installation

Clone the repository:

git clone https://github.com/Nithin10180/customer-churn-prediction.git

Navigate to the project directory:

cd customer-churn-prediction

Create a virtual environment:

python -m venv venv

Activate the virtual environment on Windows:

venv\Scripts\activate

Install dependencies:

pip install -r requirements.txt
Run Streamlit Application

Run:

streamlit run app.py

The Streamlit application will open in the browser.

Run FastAPI

Start the FastAPI server:

uvicorn api:app --host 0.0.0.0 --port 8000

Open the API documentation:

http://127.0.0.1:8000/docs
Run with Docker

Build the Docker image:

docker build -t customer-churn-api .

Run the container:

docker run -p 8000:8000 customer-churn-api

The API will be available at:

http://localhost:8000
Key Features
End-to-end Machine Learning workflow
Customer churn prediction
Numerical and categorical feature preprocessing
Logistic Regression baseline
Random Forest classification
Imbalanced-class handling
Model evaluation
Saved trained model
Interactive Streamlit application
FastAPI REST API
Swagger API documentation
Docker containerization
Power BI business dashboard
Customer risk classification
High-risk customer identification
Revenue-at-risk analysis
Retention recommendations
Business Value

The system can help a business move from reactive customer management to proactive retention.

Instead of analyzing every customer manually, the system can help prioritize customers based on predicted churn risk.

The workflow can be summarized as:

Customer Data
      ↓
Churn Prediction
      ↓
Risk Classification
      ↓
High-Risk Customer Identification
      ↓
Revenue-at-Risk Analysis
      ↓
Retention Recommendation

This provides a practical connection between Machine Learning predictions and business decision-making.

Future Improvements

The project can be extended with:

SHAP-based model explainability
Hyperparameter tuning
Automated retention recommendation engine
Probability-based risk thresholds
Customer segmentation
Database integration
Cloud deployment
CI/CD automation
Model monitoring
Automated model retraining
Production-scale data pipelines
License

This project is licensed under the MIT License.

See the LICENSE file for more information.

Author
Nithin Thokkala

Machine Learning | Data Science | Python | SQL

GitHub: https://github.com/Nithin10180

Done by Nithin

Nithin Thokkala

Customer Churn Prediction & Retention Analytics System

Machine Learning • Power BI • Streamlit • FastAPI • Docker • GitHub
