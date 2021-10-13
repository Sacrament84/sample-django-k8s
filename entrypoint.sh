#!/bin/bash
python /app/django/notejam/manage.py migrate
python /app/django/notejam/manage.py runserver 0.0.0.0:8000