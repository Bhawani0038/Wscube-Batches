import joblib
import pandas as pd
from fastapi import FastAPI, Request, Form
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates

app = FastAPI()

templates = Jinja2Templates(directory="templates")

# Load trained pipeline
model = joblib.load("model/loan_classification_pipeline.pkl")


@app.get("/", response_class=HTMLResponse)
async def home(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})


@app.post("/predict", response_class=HTMLResponse)
async def predict(
    request: Request,
    Age: int = Form(...),
    Gender: str = Form(...),
    Marital_Status: str = Form(...),
    Dependents: int = Form(...),
    Employment_Type: str = Form(...),
    Years_in_Job: int = Form(...),
    Annual_Salary: float = Form(...),
    Monthly_Income: float = Form(...),
    Smoking_Status: str = Form(...),
    Disease_Status: str = Form(...),
    Credit_Score: int = Form(...),
    Existing_Loan_Amount: float = Form(...),
    Total_Loan_Amount: float = Form(...),
    Loan_Tenure_Years: int = Form(...),
    Debt_to_Income_Ratio: float = Form(...),
    Number_of_Open_Accounts: int = Form(...),
    Loan_Purpose: str = Form(...),
    Property_Ownership: str = Form(...),
    Previous_Defaults: int = Form(...)
):

    input_data = pd.DataFrame([{
        "Age": Age,
        "Gender": Gender,
        "Marital_Status": Marital_Status,
        "Dependents": Dependents,
        "Employment_Type": Employment_Type,
        "Years_in_Job": Years_in_Job,
        "Annual_Salary": Annual_Salary,
        "Monthly_Income": Monthly_Income,
        "Smoking_Status": Smoking_Status,
        "Disease_Status": Disease_Status,
        "Credit_Score": Credit_Score,
        "Existing_Loan_Amount": Existing_Loan_Amount,
        "Total_Loan_Amount": Total_Loan_Amount,
        "Loan_Tenure_Years": Loan_Tenure_Years,
        "Debt_to_Income_Ratio": Debt_to_Income_Ratio,
        "Number_of_Open_Accounts": Number_of_Open_Accounts,
        "Loan_Purpose": Loan_Purpose,
        "Property_Ownership": Property_Ownership,
        "Previous_Defaults": Previous_Defaults
    }])

    prediction = model.predict(input_data)[0]

    return templates.TemplateResponse(
        "index.html",
        {
            "request": request,
            "prediction": prediction
        }
    )