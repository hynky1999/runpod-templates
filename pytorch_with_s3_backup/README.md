## How to use at runpod
The environment variables that need to be set are:

- AWS_ACCESS_KEY_ID: Your AWS access key ID.
- AWS_SECRET_ACCESS_KEY: Your AWS secret access key.
- AWS_REGION: The AWS region where your S3 bucket is located. In this Dockerfile, it's set to "us-east-1".
- S3_BUCKET: The name of your S3 bucket.
- S3_FOLDER: The name of the folder in your S3 bucket that you want to sync with the Docker container.

You have to run /scripts/upload_to_s3.sh to upload the files to S3. There is no automatic syncing of files between the Docker container and S3. 

## AWS - Requirements
It's expected that you will use the bucket with no public access. Please make sure that credentials have following appropirate access to bucket:
Example:
```
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "RunPodS3",
			"Effect": "Allow",
			"Action": [
				"s3:PutObject",
				"s3:DeleteObject",
				"s3:ListBucket",
				"s3:GetObject"
			],
			"Resource": [
				"arn:aws:s3:::hynek-runpod*"
			]
		}
	]
}
```
