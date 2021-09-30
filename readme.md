# hello-world-lambda

This example is boiler plate for starting with serverless world and get basic understanding. In this we are building lambda which will be called by api(via api gateway) to show hello world.  


# Prerequisites

1. Git installed on your system. It can be downloaded from https://git-scm.com/downloads
2. AWS account is available
3. aws-cli installed on your system. please refer https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html to install and configure AWS CLI. You need to run the 'aws configure' to configure the aws profile for deployment
4. sam-cli installed on your system. please refer https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-windows.html to install and configure SAM CLI
5. npm installed on your system


# Folder structure details

1. src folder which comprises of index.js which contain handler function of lambda from where our lambda function begins.
2. For aws resource creation we need template for aws infrastructure so for that we have template.yml file which have aws resource creation code.
3. Before deployment we need to provide dynamic values in template.yml file which we are providing through properties file(sam-variables.properties).
4. To inject values from properties file to template file we are performing that in bat file(hello-world.bat).
5. In hello-world.bat file we are overriding values and running sam deploy command for resource creation/update/deletion based on template file changes.


# Installation Steps

1. Go to your terminal and do git clone of this repository by executing command "https://github.com/NiteshBagle123/hello-world-lambda.git" to clone this repository
2. Move to the root of the cloned repository in your system and do npm install.(this is optional as we triggering lambda from dev url).
3. Go to your AWS account and select the region where you want to deploy this app(we can provide the same during sam deploy command).
4. In that region create a S3 bucket. This bucket is for deployment. (If you already have a bucket, you can omit this step).
5. Go back to the terminal and move to the root of the cloned repository.
6. Run command "sam build" on terminal from root for creating artifact which needed for uploading zip files(artifact) in lambda.
7. After running command sam build check .aws-sam folder created with folder which we need to push in aws lambda as a zip file(not needed just for verification purpose what all will be added in zip file(artifact)).
8. Once sam build command is successful, now run sam deploy --guided command to provide values(properties values) from terminal(it will ask values one by one what mentioned in hello-world.bat file) and say yes to deploy once done with providing all values.
9. Alternate to step 8 is run hello-world.bat file provided all values are replaced correctly in sam-variables.properties file before running bat file.
10. Once deployment is succeed we can check resource creation on aws to make sure all created as expected. 


# Verification

The below steps helps to verify if lambda trigger is working fine.
1. From postman call get api - https://qz5wq4zlxf.execute-api.us-west-2.amazonaws.com/dev/hello-world
2. After hitting send api call check we are getting 200 status code and Hello World! in response.


# Additional Information

1. This lambda is just printing hello world response via get api call.
2. We can call eGain apis and do lot of stuffs.
3. We can introduce lambda layers concept.
4. We can also leverage aws services like parameter store for storing configuration values and aws secret manager for storing sensitive data.
