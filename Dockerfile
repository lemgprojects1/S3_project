FROM python:3.9.1-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install -r requirements.txt
RUN pip install ipython
RUN pip install awscli

COPY . .

LABEL maintainer="Ashwin Rana, Dipo"

CMD gunicorn -c gunicorn.py "s3_backend.app:create_app()"
