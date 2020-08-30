FROM python:3.8.2
LABEL maintainer="halvong@yahoo.com"

#avoids buffered
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

#creates a directory
RUN mkdir /usr/src/app

#django application is in /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

#creates user and home directory in the Ubuntu image
RUN useradd -ms /bin/bash tom

