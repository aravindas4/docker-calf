FROM python:latest AS build
RUN mkdir -p /app
WORKDIR /app
COPY . /app/test

FROM python:latest
COPY --from=build /app/test /app
CMD python bio.py

