# customer-churn-prediction
End-to-end customer churn prediction system using Machine Learning, FastAPI, Streamlit, and Docker.
# Customer Churn Prediction System

An end-to-end Machine Learning project that predicts whether a customer is likely to churn and provides a foundation for customer retention analysis.

The project combines exploratory data analysis, machine learning, business analytics, an interactive Streamlit application, a FastAPI REST API, and Docker containerization.

---

## 📌 Project Overview

Customer churn is a major business problem for subscription-based companies. Identifying customers who are likely to leave allows businesses to take proactive retention measures.

This project develops a machine learning-based customer churn prediction system using customer demographic, service usage, contract, billing, and payment information.

The trained model can be accessed through:

- **Streamlit** – Interactive web application
- **FastAPI** – REST API for model inference
- **Docker** – Containerized API deployment

---

## 🎯 Objectives

- Analyze customer behavior and churn patterns.
- Perform exploratory data analysis (EDA).
- Preprocess numerical and categorical customer features.
- Train and compare machine learning models.
- Evaluate the classification model using appropriate metrics.
- Save the trained model for reuse.
- Build an interactive Streamlit prediction application.
- Expose predictions through a FastAPI REST API.
- Containerize the API using Docker.
- Perform business-oriented churn analysis using Power BI.

---

## 📊 Dataset

The project uses a Telco Customer Churn dataset containing:

- **7,043 customer records**
- **21 columns**
- Customer demographic information
- Account information
- Service subscriptions
- Contract information
- Billing and payment information
- Churn target variable

### Important Features

| Category | Features |
|---|---|
| Customer | `customerID`, `gender`, `SeniorCitizen` |
| Demographics | `Partner`, `Dependents` |
| Account | `tenure` |
| Services | `PhoneService`, `MultipleLines`, `InternetService` |
| Online Services | `OnlineSecurity`, `OnlineBackup`, `DeviceProtection`, `TechSupport` |
| Streaming | `StreamingTV`, `StreamingMovies` |
| Contract | `Contract`, `PaperlessBilling` |
| Payment | `PaymentMethod` |
| Billing | `MonthlyCharges`, `TotalCharges` |
| Target | `Churn` |

### Churn Distribution

- Churned customers: **1,869**
- Non-churned customers: **5,174**

The dataset is therefore imbalanced, making churn-focused evaluation important.

---

## 🔎 Exploratory Data Analysis

The project includes analysis of:

- Customer churn distribution
- Numerical feature distributions
- Categorical feature distributions
- Customer tenure
- Monthly charges
- Total charges
- Contract types
- Payment methods
- Internet services
- Customer service subscriptions

EDA was used to understand customer behavior and identify factors associated with churn.

---

## ⚙️ Data Preprocessing

The machine learning workflow handles both numerical and categorical variables.

### Numerical Features

- `SeniorCitizen`
- `tenure`
- `MonthlyCharges`
- `TotalCharges`

### Categorical Features

- Gender
- Partner
- Dependents
- Phone service
- Multiple lines
- Internet service
- Online security
- Online backup
- Device protection
- Tech support
- Streaming TV
- Streaming movies
- Contract
- Paperless billing
- Payment method
- Customer ID

Categorical features are transformed using **One-Hot Encoding**, while numerical and categorical preprocessing is handled through a Scikit-learn `ColumnTransformer` pipeline.

---

## 🤖 Machine Learning

The project uses classification models for predicting customer churn.

### Logistic Regression

A Logistic Regression model was implemented as a baseline classification approach.

The preprocessing and model were combined into a Scikit-learn pipeline.

### Random Forest

A Random Forest classifier was also implemented.

The Random Forest model uses:

- **200 trees**
- `class_weight="balanced"`

The balanced class weighting helps address the imbalance between churned and non-churned customers.

---

## 📈 Model Evaluation

Model performance was evaluated using:

- Accuracy
- ROC-AUC
- Confusion Matrix

The confusion matrix was used to understand:

- True Positives
- True Negatives
- False Positives
- False Negatives

ROC-AUC was used to evaluate the model's ability to distinguish between customers who churn and customers who remain.

---

## 💼 Business Insights

Power BI was used to transform the model and customer data into business-oriented insights.

Some key findings from the analysis include:

- **Month-to-month contracts** had the highest actual churn rate: **42.6%**
- **Electronic check** payment customers had the highest actual churn rate: **43.5%**
- **Fiber optic** customers had the highest predicted churn probability among internet-service categories: **43.0%**
- **91 customers** were classified as high-risk
- High-risk customers represented approximately **6.5%** of the analyzed customers
- Monthly revenue associated with high-risk customers was approximately **$7,654.55**

These insights can help businesses prioritize retention strategies.

---

## 🏗️ System Architecture

```text
                    Customer Data
                         │
                         ▼
                 Data Preprocessing
                         │
                         ▼
                       EDA
                         │
                         ▼
                Feature Engineering
                         │
                         ▼
              Machine Learning Model
                         │
                  ┌──────┴──────┐
                  │             │
                  ▼             ▼
             Streamlit       FastAPI
             Web App           API
                  │             │
                  │             ▼
                  │          Prediction
                  │
                  ▼
              User Result

                         │
                         ▼
                       Docker
