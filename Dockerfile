FROM python:3.6

RUN apt-get update
RUN apt-get install -y jq zip swig libssl1.0-dev
RUN pip install awscli
RUN pip install M2Crypto==0.35.2

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
