#!/bin/sh
cd /app

echo
python manage.py wait_for_db

echo
python manage.py migrate --noinput

echo
python manage.py runserver 0.0.0.0:8000