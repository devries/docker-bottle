FROM ubuntu:14.04
MAINTAINER Christopher De Vries <devries@idolstarastronomer.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y python-pip python-dev && apt-get clean

RUN pip install bottle
RUN pip install gunicorn

RUN groupadd -r apprunner
RUN useradd -r -g apprunner -d / -s /usr/sbin/nologin -c "Docker image user" apprunner
