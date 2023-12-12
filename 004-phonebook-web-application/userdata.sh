#!/bin/bash
yum update -y
yum install python3 -y
yum install pip -y
pip3 install flask
pip3 install flask_mysql
TOKEN="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"
FOLDER="https://$TOKEN@raw.githubusercontent.com/farukcelebi18/phonebook/main"
curl -s ${FOLDER}/phonebook-app.py -o phonebook-app.py
mkdir templates
cd templates
curl -s ${FOLDER}/templates/add-update.html -o add-update.html
curl -s ${FOLDER}/templates/delete.html -o delete.html
curl -s ${FOLDER}/templates/index.html -o index.html 
cd ..
pip install Werkzeug==2.2.2
pip install flask==2.1.3

echo "altaz-phonebook-db-instance.cbanmzptkrzf.us-east-1.rds.amazonaws.com" > dbserver.endpoint

python3 phonebook-app.py