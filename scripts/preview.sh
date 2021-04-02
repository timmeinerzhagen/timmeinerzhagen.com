cd app
gcloud auth activate-service-account --key-file=../keyfile-dungeonfulldive-com.json
gcloud config set project dungeonfulldive-com
gcloud app deploy --no-promote --quiet
cd ..