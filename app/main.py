from fastapi import FastAPI

import requests
import json


app = FastAPI()

with open('config/config.json', 'r') as file:
    config = json.load(file)

@app.get("/")
def home():
    return {"message":"Hello World!"}


@app.get("/ddns/{new_ip}")
def dyndns(new_ip):
    payload =   {
                    'id':       config["zone_id"],
                    'type':     'A',
                    'name':     config["record_name"],
                    'content':  new_ip,
                    'ttl':      1,
                    'proxied':  True
                }

    headers =   {
                    'Authorization':    'Bearer ' + config["cf_api_key"],
                    'Content-Type':     'application/json'
                }

    response  = requests.put(config["cf_api_url"] + '/zones/' + config["zone_id"] + '/dns_records/' + config["record_id"], 
            headers = headers, 
            json = payload)

    return response