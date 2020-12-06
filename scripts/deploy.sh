cd app
gcloud auth activate-service-account --key-file=../keyfile-timmeinerzhagen-de.json
gcloud config set project timmeinerzhagen-de
gcloud app deploy
cd ..