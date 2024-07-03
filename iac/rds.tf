resource "aws_db_instance" "rds_instance" {
  allocated_storage   = 10
  engine              = "postgres"
  engine_version      = "15.4"
  instance_class      = "db.t3.micro"
  identifier          = "rds-challenge-devops"
  username            = "dbuser"
  password            = "supersecretpassword"
  skip_final_snapshot = true

  tags = {
    Name        = "rds-challenge-devops"
    Environment = "Dev"
  }
}
