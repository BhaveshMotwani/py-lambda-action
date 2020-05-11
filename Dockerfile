FROM lambci/lambda:build-python3.6

RUN pip install awscli
RUN pip install aws-sam-cli


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
