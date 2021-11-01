FROM python:3.7-alpine
MAINTAINER I'm

ENV PUTHONUNBUFFERED 1

COPY ./requirements.txt ./requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

RUN makedir /app
WORKDIR /app
COPY ./app /app


RUN addgroup demo && adduser -DH -G demo user
USER user