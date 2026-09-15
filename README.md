# Customer Churn Prediction & Retention Analytics

An end-to-end **Machine Learning project** for predicting customer churn, identifying high-risk customers, and supporting customer retention decisions using **Python, Machine Learning, Power BI, Streamlit, FastAPI, and Docker**.

---

# Project Overview

Customer churn is a major challenge for subscription-based businesses. Losing customers directly affects revenue and long-term business growth.

The objective of this project is to build an **end-to-end Customer Churn Prediction System** that can:

- Predict whether a customer is likely to churn
- Estimate customer churn risk
- Identify high-risk customers
- Analyze major patterns associated with churn
- Support customer retention decisions
- Provide an interactive prediction interface
- Expose the trained model through a REST API
- Containerize the API using Docker
- Present business insights through Power BI

The project follows an end-to-end workflow from **data analysis and model development to application deployment and business analytics**.

---

# Problem Statement

Businesses collect large amounts of customer data but often struggle to identify which customers are likely to leave.

The goal of this project is to develop a **Machine Learning-based churn prediction system** that identifies customers who are at risk of leaving.

The predicted churn risk can then be used to prioritize customers for **retention strategies and business interventions**.

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
- Build an interactive Streamlit application
- Build a FastAPI REST API
- Containerize the API using Docker
- Create a Power BI customer churn dashboard
- Identify high-risk customers
- Analyze revenue at risk
- Generate retention-oriented insights

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

## Dataset Features

| Category | Features |
|---|---|
| **Customer Information** | customerID, gender, SeniorCitizen |
| **Demographics** | Partner, Dependents |
| **Account Information** | tenure |
| **Phone Services** | PhoneService, MultipleLines |
| **Internet Services** | InternetService |
| **Online Services** | OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport |
| **Streaming Services** | StreamingTV, StreamingMovies |
| **Contract Information** | Contract |
| **Billing Information** | PaperlessBilling, MonthlyCharges, TotalCharges |
| **Payment Information** | PaymentMethod |
| **Target Variable** | Churn |

---

# Exploratory Data Analysis

Exploratory Data Analysis was performed to understand the structure and behavior of the customer dataset.

## Analysis Performed

- Customer churn distribution
- Customer tenure analysis
- Monthly charges analysis
- Total charges analysis
- Contract analysis
- Payment method analysis
- Internet service analysis
- Customer service subscriptions
- Demographic analysis
- Churn patterns across customer segments

## Visualization

The project uses visualizations to identify relationships between customer characteristics and churn.

Tools used:

- **Matplotlib**
- **Seaborn**
- **Power BI**

---

# Data Preprocessing

The dataset contains both numerical and categorical variables.

## Numerical Features

- `SeniorCitizen`
- `tenure`
- `MonthlyCharges`
- `TotalCharges`

## Categorical Features

- `gender`
- `Partner`
- `Dependents`
- `PhoneService`
- `MultipleLines`
- `InternetService`
- `OnlineSecurity`
- `OnlineBackup`
- `DeviceProtection`
- `TechSupport`
- `StreamingTV`
- `StreamingMovies`
- `Contract`
- `PaperlessBilling`
- `PaymentMethod`
- `customerID`

Categorical variables were converted into machine-readable numerical representations using **One-Hot Encoding**.

A **Scikit-learn Pipeline** and **ColumnTransformer** were used to ensure that preprocessing and model prediction remain consistent.

---

# Machine Learning

Two classification models were developed and evaluated.

## Logistic Regression

**Logistic Regression** was implemented as a baseline classification model.

The model was combined with the preprocessing pipeline so that numerical and categorical features could be processed automatically before prediction.

## Random Forest

**Random Forest Classifier** was implemented as the main tree-based Machine Learning model.

The Random Forest model was configured with:

- **200 decision trees**
- **Balanced class weights**

Balanced class weighting was used to improve the model's ability to learn from the churn class.

---

# Model Evaluation

The Machine Learning models were evaluated using multiple metrics.

## Evaluation Metrics

- **Accuracy**
- **ROC-AUC**
- **Confusion Matrix**

## Confusion Matrix

The confusion matrix was used to analyze:

- **True Positives**
- **True Negatives**
- **False Positives**
- **False Negatives**

This is particularly important for churn prediction because incorrectly classifying a customer who is actually going to churn may result in a missed retention opportunity.

---

# Model Persistence

After training, the trained Machine Learning model was saved using **Joblib**.

```text
customer_churn_model.pkl
```

The saved model is used by both the **Streamlit application** and the **FastAPI backend**.

This allows predictions to be made without retraining the model every time the application starts.

---

# Power BI Customer Churn & Retention Analytics

A **Power BI dashboard** was developed to convert Machine Learning predictions into business-oriented insights.

## Dashboard Analysis

The dashboard focuses on:

- Customer churn risk
- Actual churn
- Predicted churn probability
- High-risk customers
- Medium-risk customers
- Low-risk customers
- Contract-level churn
- Payment-method analysis
- Internet-service analysis
- Revenue at risk
- Customer-level risk prioritization
- Retention recommendations

---

# Business Insights

The Power BI analysis revealed several important customer churn patterns.

## Customer Risk Distribution

The analyzed customer data contains:

- **Customers analyzed:** 1,409
- **Actual churned customers:** 374
- **Actual churn rate:** 26.54%
- **Average churn probability:** 26.76%
- **High-risk customers:** 91
- **Medium-risk customers:** 347
- **Low-risk customers:** 971

---

## Contract Analysis

Customers with **Month-to-month contracts** showed the highest churn risk.

### Month-to-month Customers

- Actual churn rate: **42.6%**
- Predicted churn probability: approximately **43.0%**

Customers with longer-term contracts showed significantly lower churn rates.

This suggests that encouraging customers to move toward longer-term contracts could be considered as part of a retention strategy.

---

## Payment Method Analysis

Customers using **Electronic Check** showed the highest actual churn rate.

- Electronic Check churn rate: **43.5%**

This makes the electronic-check customer segment an important area for further retention analysis.

---

## Internet Service Analysis

Customers using **Fiber Optic** internet service showed the highest predicted churn probability among the analyzed internet-service categories.

- Fiber Optic predicted churn probability: approximately **43.0%**

---

# Customer Risk Prioritization

The project goes beyond simple churn classification.

Customers are categorized into three risk levels:

### High Risk

Customers with a high probability of churn who should receive immediate attention.

### Medium Risk

Customers showing moderate churn risk who should be monitored and targeted with suitable retention strategies.

### Low Risk

Customers with relatively low churn probability who require normal customer engagement.

---

# Revenue at Risk

The dashboard also connects churn probability with financial impact.

The high-risk customer segment contains approximately:

```text
91 high-risk customers
```

with approximately:

```text
7,654.55
```

in associated monthly revenue.

This allows businesses to prioritize customers based not only on churn probability but also on their potential financial impact.

---

# Retention Strategy

The overall business workflow can be represented as:

```text
Customer Data
      ↓
Data Preprocessing
      ↓
Machine Learning Model
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
```

This provides a practical connection between **Machine Learning predictions and business decision-making**.

---

# Streamlit Application

An interactive **Streamlit web application** was developed for real-time customer churn prediction.

## Customer Inputs

The application accepts:

- Customer ID
- Gender
- Senior Citizen
- Partner
- Dependents
- Tenure
- Phone Service
- Multiple Lines
- Internet Service
- Online Security
- Online Backup
- Device Protection
- Tech Support
- Streaming TV
- Streaming Movies
- Contract
- Paperless Billing
- Payment Method
- Monthly Charges
- Total Charges

## Prediction

After entering customer information, the trained Machine Learning model predicts the customer's churn status.

### Possible Results

```text
Customer is likely to churn
```

or

```text
Customer is unlikely to churn
```

---

# FastAPI REST API

A **FastAPI REST API** was developed to expose the trained Machine Learning model.

## API Endpoints

### Home Endpoint

```text
GET /
```

Used to verify that the API is running.

### Prediction Endpoint

```text
POST /predict
```

The endpoint accepts customer information and returns a churn prediction.

## Example Response

```json
{
    "prediction": 0,
    "result": "Customer is unlikely to churn"
}
```

### Prediction Values

```text
0 = Customer is unlikely to churn
1 = Customer is likely to churn
```

---

# Swagger API Documentation

FastAPI automatically provides interactive API documentation.

After starting the API, open:

```text
http://127.0.0.1:8000/docs
```

The Swagger interface can be used to test the `/predict` endpoint directly.

---

# Docker

The FastAPI application was containerized using **Docker**.

## Docker Configuration

The Docker setup:

- Uses Python 3.11
- Creates an application working directory
- Copies the trained model
- Copies the FastAPI application
- Installs required dependencies
- Exposes port 8000
- Runs the API using Uvicorn

## Dockerfile

```dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY customer_churn_model.pkl .
COPY api.py .

RUN pip install --no-cache-dir fastapi uvicorn pandas scikit-learn joblib

EXPOSE 8000

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]
```

---

# Project Architecture

```text
                         Customer Dataset
                                |
                                ↓
                       Data Preprocessing
                                |
                                ↓
                              EDA
                                |
                                ↓
                    Feature Transformation
                                |
                                ↓
                       Machine Learning
                                |
                    +-----------+-----------+
                    |                       |
                    ↓                       ↓
             Logistic Regression      Random Forest
                    |                       |
                    +-----------+-----------+
                                |
                                ↓
                         Model Evaluation
                                |
                                ↓
                    Saved ML Model (.pkl)
                                |
                    +-----------+-----------+
                    |                       |
                    ↓                       ↓
               Streamlit                 FastAPI
                Web App                 REST API
                                            |
                                            ↓
                                         Docker

                                |
                                ↓
                              Power BI
                                |
                                ↓
                    Churn & Retention Analytics
                                |
                                ↓
                  Risk Prioritization & Insights
```

---

# Project Structure

```text
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
```

---

# Technologies Used

## Programming Language

**Python**

## Data Analysis

- **Pandas**
- **NumPy**
- **Matplotlib**
- **Seaborn**

## Machine Learning

- **Scikit-learn**
- **Logistic Regression**
- **Random Forest**
- **ColumnTransformer**
- **OneHotEncoder**

## Application Development

- **Streamlit**
- **FastAPI**
- **Uvicorn**

## Deployment & DevOps

- **Docker**
- **Git**
- **GitHub**

## Business Intelligence

- **Power BI**

## Model Persistence

- **Joblib**

---

# Installation

## Clone the Repository

```bash
git clone https://github.com/Nithin10180/customer-churn-prediction.git
```

## Navigate to the Project Directory

```bash
cd customer-churn-prediction
```

## Create a Virtual Environment

```bash
python -m venv venv
```

## Activate Virtual Environment on Windows

```bash
venv\Scripts\activate
```

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

# Run Streamlit Application

Run the following command:

```bash
streamlit run app.py
```

The Streamlit application will open in your browser.

---

# Run FastAPI

Start the FastAPI server:

```bash
uvicorn api:app --host 0.0.0.0 --port 8000
```

The API will be available at:

```text
http://127.0.0.1:8000
```

Swagger documentation:

```text
http://127.0.0.1:8000/docs
```

---

# Run with Docker

## Build Docker Image

```bash
docker build -t customer-churn-api .
```

## Run Docker Container

```bash
docker run -p 8000:8000 customer-churn-api
```

The API will be available at:

```text
http://localhost:8000
```

---

# Key Features

- **End-to-end Machine Learning workflow**
- **Customer churn prediction**
- **Numerical and categorical feature preprocessing**
- **Logistic Regression baseline**
- **Random Forest classification**
- **Class imbalance handling**
- **Model evaluation**
- **Saved trained Machine Learning model**
- **Interactive Streamlit application**
- **FastAPI REST API**
- **Swagger API documentation**
- **Docker containerization**
- **Power BI business dashboard**
- **Customer risk classification**
- **High-risk customer identification**
- **Revenue-at-risk analysis**
- **Retention recommendations**

---

# Business Value

The system helps businesses move from **reactive customer management to proactive customer retention**.

Instead of manually analyzing every customer, businesses can use predicted churn probabilities to prioritize customers who require attention.

## Business Workflow

```text
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
```

This creates a practical connection between **Machine Learning, business intelligence, and customer retention**.

---

# Future Improvements

The project can be further improved by adding:

- **SHAP-based model explainability**
- **Hyperparameter tuning**
- **Automated retention recommendation engine**
- **Probability-based risk thresholds**
- **Customer segmentation**
- **Database integration**
- **Cloud deployment**
- **CI/CD automation**
- **Model monitoring**
- **Automated model retraining**
- **Production-scale data pipelines**

---

# License

This project is licensed under the **MIT License**.

See the [`LICENSE`](LICENSE) file for more information.

---

# Author

## Nithin Thokkala

**Machine Learning | Data Science | Python | SQL**

GitHub: **[Nithin10180](https://github.com/Nithin10180)**

---

# Done by Nithin

**Nithin Thokkala**

**Customer Churn Prediction & Retention Analytics System**

**Machine Learning • Power BI • Streamlit • FastAPI • Docker • GitHub**
