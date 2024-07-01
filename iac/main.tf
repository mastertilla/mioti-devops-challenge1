terraform {
  backend "s3" {
    bucket = "devops-mioti"
    key    = "tf-state"
    region = "eu-west-1"
  }
}