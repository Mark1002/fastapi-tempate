#! /bin/sh
set -e

gcloud config set project "${PROJECT_ID}" 

IMAGE_NAME="fastapi-template"
VERSION="latest"

gcloud builds submit \
--tag gcr.io/"${PROJECT_ID}"/${IMAGE_NAME}:${VERSION} \
--project "${PROJECT_ID}"
