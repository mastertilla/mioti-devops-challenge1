terraform {
  backend "s3" {
    bucket = "devops-mioti-jsina"
    key    = "tf-state"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = var.region
}
