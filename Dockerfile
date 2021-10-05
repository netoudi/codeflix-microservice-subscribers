# syntax=docker/dockerfile:1
FROM python:3.9.7-alpine3.14

ENV PYTHONUNBUFFERED=1

RUN apk update && \
    apk add --no-cache bash

RUN adduser --disabled-password --uid 1000 python

USER python

RUN mkdir /home/python/app

WORKDIR /home/python/app

COPY requirements.txt /home/python/app

RUN pip install -r requirements.txt
