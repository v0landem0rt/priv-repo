## Dokerizing postgres with sample flask app
This repo conains kubernetes config for postgresql database(postgres.yaml). These database connects with sample flask app( https://github.com/ro6ley/cars_in_a_flask ). File app_deploy.yaml contains kubernetes wrapper for flask app. 
# Requirements
* ubuntu 14/16/18
* kubernetes node installed<br />

To set up this solution, execute following commands:
``` git clone https://github.com/v0landem0rt/priv-repo ```<br />
``` git clone https://github.com/ro6ley/cars_in_a_flask ```<br />
``` mv Dockerfile cars_in_a_flask ```<br />
``` cd cars_in_a_flask ```<br />
``` docker build . --tag newimage ```<br />
``` kubectl apply -f postgres.yaml ```<br />
``` kubectl apply -f app_deploy.yaml ```<br />
