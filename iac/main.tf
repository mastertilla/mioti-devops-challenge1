terraform {
  backend "s3" {
    bucket = "devops-mioti-jmcc"
    key    = "tf-state"
    region = "eu-west-1"
  }
}
