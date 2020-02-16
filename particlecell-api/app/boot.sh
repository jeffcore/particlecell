#!/bin/sh
flask db upgrade

# first time creating project you have to call this
# flask db init
# flask db migrate

if [ "$FLASK_CONFIG" = "testing" ]
then
  coverage run test.py
  coverage report -m
  # python test.py
else
  flask run --host=0.0.0.0
fi
