resource "aws_s3_bucket" "bucket" {
  bucket = "challenge-devops-danielarroyo"
  tags = {
    Name = "Challege DevOps s3"
    Env  = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "s3_access" {
  bucket                  = aws_s3_bucket.bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

}