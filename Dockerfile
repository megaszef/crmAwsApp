FROM python:3.10-slim

WORKDIR /apk

COPY . ./app

RUN python3 -m venv venv \
    && venv/bin/python3 -m pip install --no-cache-dir -r ./app/requirements.txt

EXPOSE 8000

ENTRYPOINT ["venv/bin/python3", "./app/manage.py", "runserver", "0.0.0.0:8000"]
