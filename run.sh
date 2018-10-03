#!/bin/bash
python3 ./src/manage.py migrate
gunicorn -c etc/gunicorn.py --pythonpath $(pwd)/src src.wsgi:application
