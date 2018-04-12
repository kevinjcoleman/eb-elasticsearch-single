#!/bin/bash

cd deploy
zip -r deploy.zip .
aws s3 mv deploy.zip s3://mys3bucketforeb/deploy.zip
cd ..

aws elasticbeanstalk create-application-version --application-name eb-teststack-8 --version-label new-version-6 --source-bundle S3Bucket="mys3bucketforeb",S3Key="deploy.zip"

aws elasticbeanstalk update-environment --version-label new-version-6 --environment-id e-pzr44pgbwi