# kennethkrausejr-springer-nature

## Pre-requisite
Install Python

## Getting Started
Run this in a Python virtual environment to run locally. Could also create a docker container to run the script but will run locally for this demonstration. 

$ mkdir env
$ python -m venv ./env

## To Run
Activate virtual environment and run script. 

For Windows:
$ env/Script/activate
$ pip install -r requirement.txt

Run script:
$ robot -d results tests

## To Update Dependencies
If you need to add new dependencies follow these steps. 

First activate the virtual environment (see above). 
$ pip install <package-name>

To freeze: 
$ pip freeze > requirements.txt

