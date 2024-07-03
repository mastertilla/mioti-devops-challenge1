resource "aws_instance" "ec2_instance" {
  ami = "ami-08ba52a61087f1bd6"

  instance_type = "t2.micro"

  tags = {
    Name        = "ec2-challenge-devops"
    Environment = "Dev"
  }

  root_block_device {
    volume_size = 30
  }

  vpc_security_group_ids = [aws_security_group.ec2_security_group_new.id]
}

resource "aws_security_group" "ec2_security_group_new" {
  name        = "ec2-sg-new"
  description = "Security group for EC2 instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
