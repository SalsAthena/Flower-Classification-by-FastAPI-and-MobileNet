# Flower Classification with FastAPI and Docker

This project aims to develop a deep learning model that classifies different types of flowers based on uploaded images. The trained model is deployed using FastAPI as the backend and packaged into a container using Docker, making it easy to run across various environments.

## Project Structure

flower/  
│-- data/  
│   │-- train/  
│   │-- test/  
│-- templates/  
│   │-- index.html
|-- flower_.ipnyb
|-- ModelFlower.h5  
│-- app12.py  
│-- proses.py  
│-- requirements.txt  
│-- Dockerfile  
│-- README.md  

## Folder and File Descriptions
* model/
    Contains the trained deep learning model in .h5 format for inference.
* flower/
    This folder contains scripts related to data processing and model training:
    preprocessing.py – Handles data preprocessing such as augmentation, resizing, and normalization.
    train_model.py – Trains the flower classification model using the prepared dataset.
    evaluate_model.py – Evaluates the model performance using the test dataset.
* data/
    Contains datasets for training and testing:
    Link data : https://www.kaggle.com/datasets/kausthubkannan/5-flower-types-classification-dataset
    * train/ – Training data samples.
    * test/ – Testing data samples.
* templates/
    Contains HTML files for the web interface.
    index.html – The main page to upload images and view predictions.
* app12.py
    The main script to run the FastAPI application, handling API requests and routing.
* proses.py
    Contains functions to process uploaded images, load the trained model, and make predictions.
* requirements.txt
    Lists all dependencies required to run the application.
* Dockerfile
    Used to build the Docker container that includes the application and dependencies.


## Installation and Usage

1. Clone the Repository
    git clone https://github.com/yourusername/flower-classification.git  
    cd flower-classification  

2. Install Dependencies
    pip install -r requirements.txt  

3. Running the Application Locally
    * Run the application using FastAPI:
        uvicorn app12:app --host 0.0.0.0 --port 8000 --reload  

    * Access the app via browser at:
        http://127.0.0.1:8000  

## Deployment Using Docker

1. Build the Docker Image
    docker build -t flower . 

2. Run the Container
    docker run -p 80:80 flower

    Access the app in the browser at:
    http://127.0.0.1:80

## Web App Implementation Explanation
Using a web app in this project allows users to:

Upload images via a web-based HTML interface.
The uploaded image is processed by the backend using FastAPI.
The pre-trained deep learning model classifies the image.
The classification result is displayed on the web page.
The HTML page is created to provide a simple yet interactive interface for users. The page is built using Jinja2 templates, enabling dynamic interaction between the frontend and backend.

For the web app development process, VS Code is used as the main editor to facilitate development and debugging. All files related to the web app, such as the model, training data, testing data, and core scripts, are stored in the flower folder for easy management and maintenance.

## Contributors
Salsabila Hasna
