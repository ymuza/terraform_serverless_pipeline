resource "aws_dynamodb_table" "records" {
  name         = "${var.project_name}-records"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "order_id"

  attribute {
    name = "order_id"
    type = "S"
  }
}
