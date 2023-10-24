FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH "/app"

RUN apt update
RUN python -m pip install --upgrade pip

WORKDIR /app
COPY requirements.txt .
RUN python -m pip install -r requirements.txt 

COPY invert-image/ invert-image/
ENTRYPOINT [ "python", "-m", "invert-image" ]