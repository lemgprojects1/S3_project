# Flask
- It uses the Flask application factory pattern
- It uses gunicorn as a proper app server (this is safe to use in production)

The `gunicorn.py` file contains a few config settings. `accesslog = '-'` ensures
that things get logged to STDOUT.

View all of [gunicorn's documentation](http://docs.gunicorn.org/en/latest/index.html).

If you're a seasoned Flask developer and you prefer uWSGI instead of gunicorn,
by all means use that instead. You know what to change!

## Start here

```
    docker-compose up

    docker exec -it flask-s3_web_1 /bin/sh

```