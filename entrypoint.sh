#!/bin/bash

deploy_lambda_function_sam(){
	sam build -t "${INPUT_TEMPLATE_FILE}"

	sam deploy --stack-name "gw-authbridge" --s3-bucket "aws-sam-cli-managed-default-samclisourcebucket-w14e5f9zxk17" --capabilities "CAPABILITY_IAM"
}


deploy_lambda_function_sam
echo "Done."
