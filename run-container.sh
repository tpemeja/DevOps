#!/bin/bash

# Run Docker Image
docker run -d \
  --name django-website \
  -p 8000:8000 \
  -v $(pwd):/code \
  tpemeja/devops_web:main-latest \
  python mysite/manage.py runserver 0.0.0.0:8000