FROM python:latest
RUN mkdir -p /app
WORKDIR /app
COPY . /app
CMD python bio.py

