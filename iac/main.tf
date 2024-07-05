terraform {
  backend "s3" {
    bucket = "devops-mioti-ajm"
    key    = "tf-state"
    region = "eu-west-1"
  }
}
