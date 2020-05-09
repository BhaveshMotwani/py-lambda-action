FROM lambci/lambda:python3.6

RUN apt-get update
RUN apt-get install -y jq zip swig libssl1.0-dev
RUN pip install awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
