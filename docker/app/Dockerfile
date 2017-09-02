FROM python:3.6.1

MAINTAINER Luis Mayta <@slovacus>

COPY ./requirements/ /app/requirements/
COPY ./requirements.txt /app/requirements.txt

# set working directory to /app/
WORKDIR /app/

# install python dependencies
RUN pip install -r /app/requirements.txt
