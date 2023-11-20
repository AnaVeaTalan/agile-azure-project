# Overview

This project involves creating a CI/CD pipeline for a Python-based machine learning application using Flask. The development starts by setting up a GitHub repository from scratch and implementing GitHub Actions. A Makefile, requirements, and application code are included to facilitate the CI/CD process. The core of the application revolves around a pre-trained scikit-learn model for predicting housing prices in Boston, with an API for making predictions.

The first phase focuses on GitHub Actions for continuous integration and delivery. This includes defining workflows in the GitHub repository and incorporating a Makefile to automate tasks. The GitHub Actions are designed to ensure the quality and functionality of the codebase as changes are made.

In the second phase, the project extends the CI/CD pipeline by integrating Azure Pipelines with the Flask web framework. The ultimate goal is to enable continuous delivery to Azure App Service, providing a seamless deployment process for the machine learning microservice.

By operationalizing the Flask app and applying CI/CD skills, the project aims to streamline the development and deployment of the machine learning application, making it efficient and reliable for predicting housing prices in a production environment.

## Project Plan

* [Link to the trello board](https://trello.com/invite/b/9kD8OOmk/ATTI5ede437729e310bb17208f2d8fb042ba8E3C1C74/agile-project)

![Alt text](image-2.png)
* [Link to spreadsheet that includes the original and final project plan](https://docs.google.com/spreadsheets/d/1iSzjGNCLhfLreIUkq0XJFgNgwD52ehZjRVAmbwagZvM/edit?usp=sharing)

![Alt text](image-1.png)

## Instructions

<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

### 1. Setup Azure Cloud Shell
   - Create GitHub Repository
   - Launch an Azure Cloud Shell and create the ssh keys
```bash
ssh-keygen -t rsa
cat /home/odl_user/.ssh/id_rsa.pub
```
- Upload these keys to your github account.
![Alt text](image-4.png)
- Clone your repositorie in the Cloud Shell
![Alt text](image-3.png)

#### 1.2 Create project scalfolding

- Create a Makefile to build and test the application. Here's an example of a makefile
```bash
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py


lint:
	pylint --disable=R,C hello.py

all: install lint test
```
- Create a requirements file with the packages needed. Here's the requirements needed,
```bash
pylint
pytest
```
- Create a file with some functions.
```bash
def toyou(x):
    return "hi %s" % x


def add(x):
    return x + 1


def subtract(x):
    return x - 1
```
- Create a file to test the functions of the previous file.
```bash
from hello import toyou, add, subtract


def setup_function(function):
    print("Running Setup: %s" % function.__name__)
    function.x = 10


def teardown_function(function):
    print("Running Teardown: %s" % function.__name__)
    del function.x


### Run to see failed test
#def test_hello_add():
#    assert add(test_hello_add.x) == 12

def test_hello_subtract():
    assert subtract(test_hello_subtract.x) == 9
```
#### 1.3 Create virtual enviroment

- Create the virtual enviroment by running
```bash
python3 -m venv ~/.myrepo
~/.myrepo/bin/activate
```
- Then run the make all command to install all needed requirements and run the local test
![Alt text](image-5.png)
![Alt text](image-6.png)





* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


