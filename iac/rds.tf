resource "aws_db_instance" "example" {
  identifier           = "rds-challenge-devops"
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "15.4"
  instance_class       = "db.t3.micro"
  username             = "yago"
  password             = "your_password_here" # Recomiendo usar variables o secretos para esto
  publicly_accessible  = false # Cambiar a true si deseas acceso público

  tags = {
    Name = "rds-challenge-devops"
  }
}