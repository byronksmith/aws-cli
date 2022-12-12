# generate root access keys
aws configure --profile root-mfa-delete-demo

# Copy & Paste AWS Access Key ID in CLI prompt

# Copy & Paste AWS Secret Access Key ID in CLI prompt

# Enter default region name: us-east-1

# Test access to s3 API
aws s3 ls --profile root-mfa-delete-demo

# enable mfa delete
aws s3api put-bucket-versioning --bucket mfa-delete-demo --versioning-configuration Status=Enabled,MFADelete=Enabled --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete-demo

# disable mfa delete
aws s3api put-bucket-versioning --bucket mfa-delete-demo --versioning-configuration Status=Enabled,MFADelete=Disabled --mfa "arn-of-mfa-device mfa-code" --profile root-mfa-delete-demo

# delete the root credentials in the IAM console!!!
