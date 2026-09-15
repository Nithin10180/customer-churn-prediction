
from fastapi import FastAPI
import pandas as pd
import joblib

app = FastAPI(title="Customer Churn Prediction API")

# Load trained model
model = joblib.load("customer_churn_model.pkl")


@app.get("/")
def home():
    return {
        "message": "Customer Churn Prediction API is running"
    }


@app.post("/predict")
def predict(
    customerID: str,
    gender: str,
    SeniorCitizen: int,
    Partner: str,
    Dependents: str,
    tenure: int,
    PhoneService: str,
    MultipleLines: str,
    InternetService: str,
    OnlineSecurity: str,
    OnlineBackup: str,
    DeviceProtection: str,
    TechSupport: str,
    StreamingTV: str,
    StreamingMovies: str,
    Contract: str,
    PaperlessBilling: str,
    PaymentMethod: str,
    MonthlyCharges: float,
    TotalCharges: float
):

    input_data = pd.DataFrame({
        "customerID": [customerID],
        "gender": [gender],
        "SeniorCitizen": [SeniorCitizen],
        "Partner": [Partner],
        "Dependents": [Dependents],
        "tenure": [tenure],
        "PhoneService": [PhoneService],
        "MultipleLines": [MultipleLines],
        "InternetService": [InternetService],
        "OnlineSecurity": [OnlineSecurity],
        "OnlineBackup": [OnlineBackup],
        "DeviceProtection": [DeviceProtection],
        "TechSupport": [TechSupport],
        "StreamingTV": [StreamingTV],
        "StreamingMovies": [StreamingMovies],
        "Contract": [Contract],
        "PaperlessBilling": [PaperlessBilling],
        "PaymentMethod": [PaymentMethod],
        "MonthlyCharges": [MonthlyCharges],
        "TotalCharges": [TotalCharges]
    })

    prediction = model.predict(input_data)[0]

    if prediction == 1:
        result = "Customer is likely to churn"
    else:
        result = "Customer is unlikely to churn"

    return {
        "prediction": int(prediction),
        "result": result
    }
