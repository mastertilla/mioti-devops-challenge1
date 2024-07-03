resource "aws_s3_bucket" "bucket" {
  bucket = "mioti-challenge1-jmcc"
  tags = { Name = "Challenge DevOps s3"
    Enviroment = "Dev"
  }
}
resource "aws_s3_bucket_public_access_block" "s3_access" {
  bucket                  = aws_s3_bucket.bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


