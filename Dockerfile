FROM python:3.9

COPY ./requirements.txt /src/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /src/requirements.txt

COPY . /src

EXPOSE 6060

ENV PIP_ROOT_USER_ACTION=ignore

WORKDIR src

CMD ["python3", "manage.py", "runserver", "0.0.0.0:6060"]

