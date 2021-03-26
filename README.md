# dungeonfulldive.com

Conent and setup for the personal website [timmeinerzhagen.de](https://www.timmeinerzhagen.de).

## Deployment
Run Pipeline to deploy to the Google Comupte Platform (GCP) service Google App Engine (GAE).

## GCP
1. Create New Project
2. Create new Service account with priveleges "App Engine Admin"
3. Generate a key for the service account and place it in the Github environment with the name GCLOUD_KEYFILE
4. Enable App Engine Admin API
5. 
'''
gcloud app create --region=europe-west
'''
6. Run Workflow

## Credit
The template ["Halcyon Days"](http://tympanus.net/codrops/2014/07/14/freebie-halcyon-days-one-page-website-template/) made by [Peter Finlan](http://peterfinlan.com/) was used in this project.

## License
Use freely under MIT license.
