resource "aws_db_instance" "rds-challenge-devops" {
  allocated_storage   = 10
  db_name             = "rdschallengedevops"
  engine              = "postgres"
  engine_version      = "15.4"
  instance_class      = "db.t3.micro"
  username            = "danielac"
  password            = "clase-devops"
  skip_final_snapshot = true
}