resource "aws_db_instance" "rds-challenge-devops-ajm" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "15.4"
  instance_class       = "db.t3.micro"
  identifier           = "rds-challenge-devops"
  db_name              = "rdschallenge"
  username             = "alexjm"
  password             = "1234superseguro"
  parameter_group_name = "default.postgres15"
  skip_final_snapshot  = true

  tags = {
    Name = "rds-challenge-devops-ajm"
  }
}
