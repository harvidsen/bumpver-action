FROM python:3-alpine

RUN apk add --no-cache bash git

RUN pip install --no-cache-dir bumpver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
