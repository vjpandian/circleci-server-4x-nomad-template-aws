# circleci-server-4x-nomad-template-aws
Template for managing CircleCI Server 4.x Nomad Configuration for AWS


#### Running Terraform Plan

```
cd $REPO_PATH
terraform init -input=false
terraform plan -out tfapply -var="aws_region=$AWS_DEFAULT_REGION" -var="aws_access_key=$AWS_ACCESS_KEY" -var="aws_secret_key=$AWS_SECRET_KEY"
```

####  Running Terraform Apply

```
cd $REPO_PATH
terraform apply -auto-approve tfapply
```
