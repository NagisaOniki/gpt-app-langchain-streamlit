FROM python:3.9

COPY env /opt/env
COPY src /opt/src

WORKDIR /opt/src

COPY requirements.txt ./
RUN pip install -r requirements.txt
