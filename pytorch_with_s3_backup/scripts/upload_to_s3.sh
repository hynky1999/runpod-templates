#!/bin/bash
echo "Uploading changes to S3..."

# Upload changes to S3
aws s3 sync $S3_FOLDER s3://$S3_BUCKET/$S3_FOLDER