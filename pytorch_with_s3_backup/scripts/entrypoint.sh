#!/bin/bash

# Download folder from S3
echo "Downloading folder from S3..."
aws s3 sync s3://$S3_BUCKET/$S3_FOLDER $S3_FOLDER

# Run the main process
exec "$@"