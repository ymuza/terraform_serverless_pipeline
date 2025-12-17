resource "aws_s3_bucket" "csv_input" {
  bucket = "${var.project_name}-csv-input"
}

resource "aws_s3_bucket_ownership_controls" "csv_input" {
  bucket = aws_s3_bucket.csv_input.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}


resource "aws_s3_bucket" "lambda_artifacts" {
  bucket = "${var.project_name}-lambda-artifacts"
}

resource "aws_s3_bucket_ownership_controls" "lambda_artifacts" {
  bucket = aws_s3_bucket.lambda_artifacts.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
