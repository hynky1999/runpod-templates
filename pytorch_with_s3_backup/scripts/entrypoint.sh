#!/bin/bash

# Download folder from S3
echo "Downloading folder from S3..."
aws s3 sync s3://$S3_BUCKET/$S3_FOLDER $S3_FOLDER

# Export the env variables to .bashrc
printenv | grep -E '^AWS_|^S3_' | awk -F = '{ print "export " $1 "=\"" $2 "\"" }' >> /etc/aws_environment
echo 'source /etc/aws_environment' >> ~/.bashrc




# Run the main process
exec "$@"
