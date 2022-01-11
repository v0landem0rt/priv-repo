## Dokerizing postgres with sample flask app
This repo conains kubernetes config for postgresql database(postgres.yaml). These database connects with sample flask app( https://github.com/ro6ley/cars_in_a_flask ). File app_deploy.yaml contains kubernetes wrapper for flask app. 
To set up this solution, execute following commands at ubuntu 14/16/18:
* ``` git clone https://github.com/v0landem0rt/priv-repo ```
* ``` git clone https://github.com/ro6ley/cars_in_a_flask ```
* ``` mv Dockerfile cars_in_a_flask ```
* ``` cd cars_in_a_flask ```
* ``` docker build . --tag newimage ```
* ``` kubectl apply -f postgres.yaml ```
* ``` kubectl apply -f app_deploy.yaml ```
