module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source               = "./modules/lambda"
  lambda_exec_role_arn = module.iam.lambda_exec_role_arn
}

module "apigw" {
  source            = "./modules/apigateway"
  lambda_name       = module.lambda.name
  lambda_invoke_arn = module.lambda.invoke_arn
}
