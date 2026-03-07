from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles
from pydantic import BaseModel
import pandas as pd
import joblib
import uvicorn

# Load trained pipeline
model = joblib.load("loan_classification_pipeline.pkl")

app = FastAPI(title="Loan Prediction System")

app.mount("/static", StaticFiles(directory="static"), name="static")


# ==========================
# Exact Training Schema
# ==========================

class LoanApplication(BaseModel):
    Customer_ID: str
    Name: str
    Age: int
    Gender: str
    Marital_Status: str
    Dependents: int
    Employment_Type: str
    Years_in_Job: int
    Annual_Salary: float
    Monthly_Income: float
    Debt_to_Income_Ratio: float
    Credit_Score: int
    Number_of_Open_Accounts: int
    Previous_Defaults: int
    Existing_Loan_Amount: float
    Total_Loan_Amount: float
    Loan_Tenure_Years: int
    Loan_Purpose: str
    Property_Ownership: str
    Smoking_Status: str
    Disease_Status: str


@app.get("/", response_class=HTMLResponse)
async def home():
    with open("static/index.html", "r", encoding="utf-8") as f:
        return f.read()


@app.post("/predict")
async def predict(application: LoanApplication):

    input_df = pd.DataFrame([application.model_dump()])

    prediction = model.predict(input_df)[0]
    probability = model.predict_proba(input_df)[0][1]

    return {
        "prediction": prediction,
        "probability": round(float(probability), 4)
    }


if __name__ == "__main__":
    uvicorn.run("app:app", host="0.0.0.0", port=8000)