#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"hoorewegealexis@gmail.com"}
cd /app/

/opt/venv_k8s/bin/python manage.py migrate --noinput
/opt/venv_k8s/bin/python manage.py createsuperuser $SUPERUSER_EMAIL --noinput || true
