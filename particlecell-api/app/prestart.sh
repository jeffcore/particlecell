#! /usr/bin/env bash

# Let the DB start
sleep 5;
# Run migrations
# alembic upgrade head
flask db upgrade
