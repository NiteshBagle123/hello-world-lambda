echo off
FOR /F "tokens=1,2 delims==" %%G IN (sam-variables.properties) DO (set %%G=%%H)
if %errorlevel% neq 0 exit /b
echo ##############################################################################
echo Setting local properties for deployment....
SET STACK_NAME=hello-world-nitesh-%DEPLOYMENT_ENVIRONMENT%
SET LAMBDA_NAME=hello-world-nitesh-%DEPLOYMENT_ENVIRONMENT%
SET S3_FOLDER=hello-world-nitesh/%DEPLOYMENT_ENVIRONMENT%/code/
echo Deploying SAM application....

sam deploy --debug --capabilities CAPABILITY_IAM^
    --template-file template.yml^
    --s3-bucket %CODE_BUCKET%^
    --s3-prefix %S3_FOLDER%^
    --region %AWS_REGION%^
	--stack-name %STACK_NAME%^
    --parameter-overrides^
    deploymentEnvironment=%DEPLOYMENT_ENVIRONMENT%^
	lambdaName=%LAMBDA_NAME%^
    customDomainName=%CUSTOM_DOMAIN_NAME%
echo ############################################################################## &^
echo Service deployment complete, please check command prompt logs for result! &^
cmd /k