#!/usr/bin/env bash
cd /app || exit 1
source venv/bin/activate
flask --app echo run --host=0.0.0.0 --port=8080
