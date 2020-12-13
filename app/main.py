from fastapi import FastAPI, Depends, HTTPException
from fastapi.security import HTTPBasic, HTTPBasicCredentials

import requests
import json


app = FastAPI()
security = HTTPBasic()

# Load configuration
with open('config/config.json', 'r') as file:
    config = json.load(file)


@app.get("/ddns/{new_ip}")
def dyndns(new_ip, credentials: HTTPBasicCredentials = Depends(security)):
    """ 
    Endpoint for DynDns Endpoint
    
    @param new_ip IP to change the DynDNS entry to
    @param credentials HTTPBasic auth for authenticity verification
    
    """
    
    # Verify credentials
    if credentials.username != config["ddns_user"] or credentials.password != config["ddns_password"]:
        raise HTTPException(
            status_code=401,
            detail="Incorrect user or password",
            headers={"WWW-Authenticate": "Basic"},
        )

    # Build Request payloads and headers
    payload =   {
                    'id':       config["zone_id"],
                    'type':     'A',
                    'name':     config["record_name"],
                    'content':  new_ip,
                    'ttl':      1,
                    'proxied':  False
                }
    headers =   {
                    'Authorization':    'Bearer ' + config["cf_api_key"],
                    'Content-Type':     'application/json'
                }

    reponse = requests.put(config["cf_api_url"] + '/zones/' + config["zone_id"] + '/dns_records/' + config["record_id"], 
            headers = headers, 
            json = payload)

    return {"message": "IP update was sent!"}