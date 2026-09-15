
FROM python:3.11-slim

WORKDIR /app

COPY customer_churn_model.pkl .
COPY api.py .

RUN pip install --no-cache-dir fastapi uvicorn pandas scikit-learn joblib

EXPOSE 8000

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]
