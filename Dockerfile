FROM python:3.8-alpine

LABEL "com.github.actions.name"="S3 Remove"
LABEL "com.github.actions.description"="Remove files from AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.5.1"
LABEL repository="https://github.com/vitorsgomes/s3-rm-action"
LABEL homepage="https://github.com/vitorsgomes/s3-rm-action"
LABEL maintainer="Vitor Gomes <vitorsgomes@gmail.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.18.14'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
