resource "aws_lambda_function" "csv_processor" {
  function_name = "csv_processor"
  runtime       = "python3.11"
  handler       = "handler.handler"

  s3_bucket = aws_s3_bucket.lambda_artifacts.bucket
  s3_key    = "lambda.zip"

  role = aws_iam_role.lambda_exec.arn
  timeout = 30
  memory_size = 128
}
