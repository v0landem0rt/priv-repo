FROM python:3.6-slim-buster
COPY . /cars_in_a_flask
WORKDIR /cars_in_a_flask
RUN pip3 install -r requirements.txt
RUN export FLASK_APP=app.py
RUN flask db migrate
RUN flask db upgrade
EXPOSE 5000
CMD flask run --host=0.0.0.0

