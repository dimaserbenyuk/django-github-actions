
FROM python:3.10.11-slim-bullseye AS app
LABEL org.opencontainers.image.authors="dserbenyukgood@gmail.com"
LABEL version="1.0"
LABEL description="Docker for Django"

WORKDIR /app

ARG UID=1000
ARG GID=1000

# install psycopg dependencies
# The USER instruction sets the user name (or UID) and optionally the user group (or GID) to use as the default
# user and group for the remainder of the current stage.

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential curl libpq-dev \
  && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man \
  && apt-get clean \
  && groupadd -g "${GID}" python \
  && useradd --create-home --no-log-init -u "${UID}" -g "${GID}" python \
  && chown python:python -R /app

USER python

COPY --chown=python:python requirements*.txt ./
COPY --chown=python:python bin/ ./bin

RUN chmod 0755 bin/* && bin/pip3-install.sh

ARG DEBUG="true"
ENV DEBUG="${DEBUG}" \
    PYTHONUNBUFFERED="true" \
    PYTHONPATH="." \
    PATH="${PATH}:/home/python/.local/bin" \
    USER="python"

COPY --chown=python:python . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "1", "djangoGithubActions.wsgi:application"]