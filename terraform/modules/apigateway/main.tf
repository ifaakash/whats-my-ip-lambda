resource "aws_apigatewayv2_api" "apigw" {
  name          = "whats-my-ip"
  protocol_type = "HTTP"
  description   = "API for invoking lambda"
}

resource "aws_apigatewayv2_integration" "apigw_lambda_integration" {
  api_id                 = aws_apigatewayv2_api.apigw.id
  integration_type       = "AWS_PROXY"
  integration_uri        = var.lambda_invoke_arn
  integration_method     = "POST"
  payload_format_version = "2.0"
}

resource "aws_apigatewayv2_route" "apigw_route" {
  api_id    = aws_apigatewayv2_api.apigw.id
  route_key = "GET /"
  target    = "integrations/${aws_apigatewayv2_integration.apigw_lambda_integration.id}"
}

resource "aws_apigatewayv2_stage" "apigw_stage" {
  api_id      = aws_apigatewayv2_api.apigw.id
  name        = "dev"
  auto_deploy = true
}

resource "aws_lambda_permission" "allow_apigw" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = var.lambda_name
}
