resource "aws_db_instance" "default" {
  allocated_storage           = 10
  db_name                     = "rdschallengedevops"
  engine                      = "postgres"
  engine_version              = "15.4"
  instance_class              = "db.t3.micro"
  username                    = "foo"
  password                    = "foobarbaz"
  backup_retention_period     = 1
  delete_automated_backups    = true
  allow_major_version_upgrade = true
  skip_final_snapshot         = true
}