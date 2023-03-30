# Django-GitHub-Actions
[![Maintainability](https://api.codeclimate.com/v1/badges/082afdb7c760e31af821/maintainability)](https://codeclimate.com/github/DimaSerbenyuk/Django-GitHub-Actions/maintainability) ![example workflow](https://github.com/DimaSerbenyuk/Django-GitHub-Actions/actions/workflows/django.yml/badge.svg) [![codecov](https://codecov.io/gh/DimaSerbenyuk/Django-GitHub-Actions/branch/main/graph/badge.svg?token=A6EX0QJX7D)](https://codecov.io/gh/DimaSerbenyuk/Django-GitHub-Actions)

pip freeze > requirements.txt

gunicorn --bind 0.0.0.0:8000 djangoGithubActions.wsgi


pip install -r requirements.txt


sudo apt install -y python3-venv

python3 -m venv env

source env/bin/activate

python manage.py runserver

docker-compose -f docker-compose.yml up --build -d