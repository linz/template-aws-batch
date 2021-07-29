#!/bin/bash

temp_role=$(aws sts assume-role \
                    --role-arn "$1" \
                    --role-session-name "batch-session")

export AWS_ACCESS_KEY_ID=$(echo $temp_role | jq -r .Credentials.AccessKeyId)
export AWS_SECRET_ACCESS_KEY=$(echo $temp_role | jq -r .Credentials.SecretAccessKey)
export AWS_SESSION_TOKEN=$(echo $temp_role | jq -r .Credentials.SessionToken)

echo $LINZ_CORRELATION_ID "AWS_ACCESS_KEY_ID: $AWS_ACCESS_KEY_ID"
echo $LINZ_CORRELATION_ID "aws s3 ls $2"
aws s3 ls $2
