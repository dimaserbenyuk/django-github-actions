
FROM python:3.9-slim as builder
ENV PYTHONUNBUFFERED=1

# install psycopg dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \ 
    python-dev \
    libpng-dev \
    libpq-dev \
    python-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /app
COPY . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "1", "djangoGithubActions.wsgi:application"]