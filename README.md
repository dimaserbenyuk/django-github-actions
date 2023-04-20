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

python manage.py createsuperuser

python manage.py makemigrations

python manage.py migrate

python manage.py collectstatic --noinput

loadtest -n 300 -c 10  -k  http://localhost:8000/admin


python manage.py migrate --run-syncdb

Run this on the Django shell to exclude contentype data:

python manage.py shell

>>> from django.contrib.contenttypes.models import ContentType
>>> ContentType.objects.all().delete()
>>> quit()
Finally, load JSON data into the database:

python manage.py loaddata data.json

brew install redis

brew services start redis

brew services info redis

brew services stop redis

------

python -m pip install redis

pip install django-redis

----

docker exec -it core_app sh -c "python manage.py collectstatic"

docker stats nginx core_app redis

CONTAINER ID   NAME       CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O        PIDS
617dd571318d   nginx      0.00%     3.555MiB / 4.818GiB   0.07%     54.1kB / 52.8kB   1.72MB / 4.1kB   4
0efed4d3b46f   core_app   0.06%     66.77MiB / 4.818GiB   1.35%     68.6kB / 82.8kB   11.1MB / 213kB   4
3dc7662c0a84   redis      0.54%     4.258MiB / 4.818GiB   0.09%     12.8kB / 40.3kB   7.38MB / 4.1kB   5


backup db to json 

python -Xutf8 ./manage.py dumpdata > data.json

python manage.py check --database default

curl -F type=1 http://localhost/tasks/

aws static

bucket policy 

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "PublicRead",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject",
                "s3:GetObjectVersion",
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:GetObjectAcl",
                "s3:DeleteObject"
            ],
            "Resource": "arn:aws:s3:::django-blog-github/*"
        }
    ]
}

Cross-origin resource sharing (CORS)


[
    {
        "AllowedHeaders": [
            "Authorization"
        ],
        "AllowedMethods": [
            "GET"
        ],
        "AllowedOrigins": [
            "*"
        ],
        "ExposeHeaders": [],
        "MaxAgeSeconds": 3000
    },
    {
        "AllowedHeaders": [
            "*"
        ],
        "AllowedMethods": [
            "HEAD",
            "GET",
            "PUT",
            "POST",
            "DELETE"
        ],
        "AllowedOrigins": [
            "*"
        ],
        "ExposeHeaders": [
            "ETag",
            "x-amz-meta-custom-header"
        ]
    }
]