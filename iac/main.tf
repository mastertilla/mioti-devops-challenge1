terraform {
  backend "s3" {
    bucket = "devops-mioti-pmm1"
    key    = "tf-state"
    region = "eu-west-1"
  }
}
