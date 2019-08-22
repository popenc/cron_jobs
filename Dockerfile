FROM python:3.7-slim-buster
#FROM ubuntu

RUN apt-get update && \
	apt-get install -y curl cron

COPY . /src

RUN chmod 755 /src/script.sh /src/cron_job.py

WORKDIR /src

RUN crontab /src/cronjobs

CMD ["cron", "-f", "-L", "8"]