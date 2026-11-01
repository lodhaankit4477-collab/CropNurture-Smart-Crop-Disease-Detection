# CropNurture – Smart Crop Disease Detection and Management System

## Project Title
**Design and Development of a Smart Crop Disease Detection System**

## Overview
CropNurture is an AI-powered web application that helps users identify common crop and plant diseases from leaf images. A user uploads a crop image through the web interface, the Python/Flask backend sends it through a trained PyTorch model, and the application returns the predicted disease together with available cause, prevention, and treatment information.

## Main Features
- Crop/plant leaf image upload
- AI-based disease prediction
- Disease cause and management information
- Crop analysis interface
- Education and agriculture information pages
- Responsive web interface
- Flask API for model inference
- Trained PyTorch model included in the project

## Technology Stack
- **Frontend:** Next.js, React, CSS Modules
- **Backend:** Python, Flask, Flask-CORS
- **Machine Learning:** PyTorch, TorchVision
- **Image Processing:** Pillow
- **Data/Utilities:** NumPy, Pandas
- **Optional services:** Weather/maps related endpoints in the backend

> Note: This version uses Next.js + Flask/Python for the web application. It is **not a MERN-stack application**.

## Project Structure
```text
CropNurture/
├── Backend/
│   ├── models/
│   │   └── plant_disease_model.pth
│   ├── utils/
│   ├── run.py
│   └── requirements.txt
├── frontend/
│   ├── src/
│   ├── public/
│   └── package.json
├── README.md
└── CREDITS.md
```

## How to Run on Windows

### 1. Backend
Open a terminal in the `Backend` folder:

```cmd
cd Backend
python -m venv myenv
myenv\Scripts\activate
pip install -r requirements.txt
python run.py
```

The disease-prediction API should run at:

```text
http://127.0.0.1:8000
```

Keep this terminal running.

### 2. Frontend
Open a **second terminal**:

```cmd
cd frontend
npm install
npm run dev
```

Open:

```text
http://localhost:3000
```

### 3. Test disease detection
Open **Crop Analysis**, select a clear crop/leaf image, and click **Analyze Crop**.

The frontend sends the image to:

```text
POST http://localhost:8000/disease-predict
```

## Important
- Do not commit `myenv/`, `node_modules/`, or `.next/` to GitHub.
- Keep API keys and secrets in environment variables rather than source code.
- The included trained model is used for inference; retraining is not required just to run the application.

## Attribution
This repository is a substantially customized/renamed version of an existing open-source project. See `CREDITS.md` for the upstream reference and licensing/attribution information.
