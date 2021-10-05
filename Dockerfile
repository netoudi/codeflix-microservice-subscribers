# syntax=docker/dockerfile:1
FROM python:3.9.7-alpine3.14

ENV MY_VENV=/home/python/app/venv
ENV PIP_TARGET=${MY_VENV}
ENV PYTHONPATH=${MY_VENV}
ENV PATH=${PATH}:${MY_VENV}/bin
ENV PYTHONUNBUFFERED=1

RUN apk update && \
    apk add --no-cache bash

RUN adduser --disabled-password --uid 1000 python

USER python

RUN mkdir /home/python/app

WORKDIR /home/python/app

COPY requirements.txt /home/python/app
