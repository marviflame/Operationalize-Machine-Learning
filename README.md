[![marviflame](https://circleci.com/gh/marviflame/Operationalize-Machine-Learning.svg?style=svg)](https://app.circleci.com/pipelines/github/marviflame/Operationalize-Machine-Learning)

## Project Overview

The Operationalize ML project contains a Machine Learning Microservice, built on **Scikit-Learn**. It contains a model that predicts house prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios etc...

## What does this project do?

- Run a docker container
- Upload container into a public registry (hub.docker.com)
- Run the deployed application in a Kubernetes cluster
- Integrate with CircleCI for continuous integration

## The requirements
 - Python 3.7

## START HERE

### Step 1
-  Clone this repo to your local workstation

### Step 2: Go ahead to install dependencies
- Set up the environment by running `make setup`. This will create a virtual environment in your home directory called `.devops`
- Install dependencies by running `make install`
- Lint application (requires hadolint)

### Step 3: Run Docker container
- Run the application on docker by calling `./run_docker.sh`

### Step 4: Upload to Docker Hub
- In the `./upload_docker.sh` file, edit the dockerpath (line 8) and change the docker username to a personalized one (or leave it as is, to use the public marviflame89/udacityproject4:v2.10.9)
- Upload to docker hub by using, run `./upload_docker.sh`

### Step 5: Kubernetes deployment
- Deploy to kubernetes by calling, run `./run_kubernetes.sh`
