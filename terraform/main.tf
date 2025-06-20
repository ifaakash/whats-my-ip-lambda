# Module for IAM Role and Policy for Lambda
module "iam" {
  source = "./modules/iam"
}

# Lambda Configuration
module "lambda" {
  source               = "./modules/lambda"
  lambda_exec_role_arn = module.iam.lambda_exec_role_arn
}

# API Gateway
module "apigw" {
  source            = "./modules/apigateway"
  lambda_name       = module.lambda.name
  lambda_invoke_arn = module.lambda.invoke_arn
}
