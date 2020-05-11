FROM python:3.6

RUN apt-get update
RUN apt-get install -y jq zip swig libssl1.1
RUN pip install awscli
RUN pip install aws-sam-cli
RUN sam build --use-container
RUN sam-deploy --region ap-south-1 --template-file template.yaml --stack-name gw-authbridge

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
