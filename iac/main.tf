terraform {
  backend "s3" {
    bucket = "devops-mioti-jsina"
    key    = "tf-state"
    region = "eu-west-1"
  }
}

module "s3" {
  source = "./s3"
}

module "ec2" {
  source = "./ec2"
}

module "rds" {
  source = "./rds"
}
