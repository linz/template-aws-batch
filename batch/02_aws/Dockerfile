FROM amazon/aws-cli

RUN yum install jq -y

add ./script.sh /app/script.sh

entrypoint ["/app/script.sh]