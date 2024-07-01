terraform {
  backend "s3" {
    bucket = "mioti-bucket"
    key    = "tf-state"
    region = "us-east-1"
  }
}

