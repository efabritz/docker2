FROM python:3.9.6-alpine

COPY ./requirements.txt /src/requirements.txt

RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

RUN pip install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . /src

EXPOSE 6060

ENV PIP_ROOT_USER_ACTION=ignore
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR src

