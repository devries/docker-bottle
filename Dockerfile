FROM ubuntu:14.04
MAINTAINER Christopher De Vries <devries@idolstarastronomer.com>

RUN apt-get update && apt-get install -y python-pip python-dev && apt-get clean

RUN pip install bottle
RUN pip install gunicorn
