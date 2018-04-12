# eb-elasticsearch-single

## Deploy version 

```
cd deploy
zip -r deploy.zip .
aws s3 mv deploy.zip s3://mys3bucketforeb/deploy.zip
cd ..
```
## Docker run docs 
https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_docker_image.html#create_deploy_docker_image_dockerrun
https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_docker_v2config.html#create_deploy_docker_v2config_dockerrun_format

## Eb source bundle 
https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-sourcebundle.html

## Create app version 
https://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/create-application-version.html


aws elasticbeanstalk create-application-version --application-name eb-teststack-8 --version-label new-version-5 --source-bundle S3Bucket="mys3bucketforeb",S3Key="deploy.zip"

aws elasticbeanstalk update-environment --version-label new-version-5 --environment-id e-pzr44pgbwi