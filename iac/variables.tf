variable "region" {
  type        = string
  description = "Region to deploy"
  default     = "eu-west-1"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  default     = "mioti-challenge1"
}

variable "instance_type" {
  description = "The type of the instance"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for the instance"
  default     = "ami-05438196aab4b723b"
}

variable "db_instance_class" {
  description = "The class of the RDS instance"
  default     = "db.t2.micro"
}

variable "db_engine_version" {
  description = "The version of the database engine"
  default     = "15.0"
}

variable "db_name" {
  description = "The name of the RDS database"
  default     = "rds_challenge_devops"
}

variable "db_username" {
  description = "The username for the RDS database"
  default     = "admin"
}

variable "db_password" {
  description = "The password for the RDS database"
  default     = "123456789"
}

