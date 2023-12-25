The environment variables that need to be set are:

- AWS_ACCESS_KEY_ID: Your AWS access key ID.
- AWS_SECRET_ACCESS_KEY: Your AWS secret access key.
- AWS_REGION: The AWS region where your S3 bucket is located. In this Dockerfile, it's set to "us-east-1".
- S3_BUCKET: The name of your S3 bucket.
- S3_FOLDER: The name of the folder in your S3 bucket that you want to sync with the Docker container.


You have to run /scripts/upload_to_s3.sh to upload the files to S3. There is no automatic syncing of files between the Docker container and S3. 

