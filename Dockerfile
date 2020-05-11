FROM python:3.6

RUN apt-get update
RUN apt-get install -y jq zip swig
RUN pip install awscli
RUN pip install aws-sam-cli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
