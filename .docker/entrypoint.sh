#!/bin/bash

pipenv install

source /home/python/app/.venv/bin/activate

python manage.py runserver 0.0.0.0:8000
