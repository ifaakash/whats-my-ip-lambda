resource "aws_lambda_function" "lambda" {
  function_name    = var.function_name
  role             = var.lambda_exec_role_arn
  description      = var.description
  filename         = var.filename # <zip_file_name>
  runtime          = var.runtime_env
  package_type     = var.package_type
  handler          = var.handler # <python_file_name.lambda_function_name>
  source_code_hash = filebase64sha256(var.filename)
}
