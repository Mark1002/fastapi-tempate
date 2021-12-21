#! /bin/sh
set -e

gcloud config set project "${PROJECT_ID}" 

memory="256Mi"
cpuCount="1"
region="asia-east1"
VERSION="latest"
IMAGE_NAME="fastapi-template"
SERVICE="fastapi-template"
CONTAINER_PORT="8000"

gcloud run deploy ${SERVICE} \
--port ${CONTAINER_PORT} \
--timeout 600 \
--service-account "${SERVICE_ACCOUNT}" \
--image gcr.io/"${PROJECT_ID}"/${IMAGE_NAME}:${VERSION} \
--platform managed --memory ${memory} \
--cpu ${cpuCount} --region ${region} --project "${PROJECT_ID}" \
--set-env-vars "$(cat .env | tr '\n' ',')" \
--allow-unauthenticated
