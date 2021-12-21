# FastAPI template

This is a FastAPI project start up template to speed up project development.

## template overview
```
.
├── Dockerfile
├── README.md
├── app
│   ├── __init__.py
│   ├── main.py
│   ├── models.py
│   ├── routers
│   │   ├── __init__.py
│   │   └── items.py
│   └── tests
│       ├── __init__.py
│       └── test_api.py
├── key
│   └── key.json
├── poetry.lock
├── pyproject.toml
└── script
    ├── cloud_build_docker.sh
    ├── deploy_cloud_run.sh
    └── run.sh
```
## local development
start server
```
$ uvicorn app.main:app --reload
```

## deployment

###  GCP cloud run deployment

Cloud run is a very convienient gcp serverless service for container deployment. it is especially suitable for backend API POC.

1. build image and deploy to gcp container registry first
```bash
$ ./script/build_docker_push.sh
```
2. deploy to cloud run
```
$ ./script/deploy_cloud_run.sh 
```
