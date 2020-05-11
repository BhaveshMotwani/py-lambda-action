FROM lambci/lambda:build-python3.6

RUN apt-get update
RUN apt-get install -y jq zip swig
RUN pip install awscli
RUN pip install aws-sam-cli
RUN ldd /usr/bin/openssl


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
