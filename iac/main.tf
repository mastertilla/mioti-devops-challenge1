terraform {
  backend "s3" {
    bucket = "devops-mioti-danielac"
    key    = "tf-state"
    region = "eu-west-1"
  }
}
