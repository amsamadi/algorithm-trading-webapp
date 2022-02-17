FROM python:3.5.4-windowsservercore

LABEL maintainer="Amjad Samadi <samadiii.soran@gmail.com>"

WORKDIR /opt/app

COPY requirements.txt .

RUN pip install -U pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT python manage.py runserver

EXPOSE 8000
