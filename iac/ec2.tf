resource "aws_instance" "ec2-challenge-devops-ajm" {
  ami           = "ami-08ca6be1dc85b0e84"
  instance_type = "t2.micro"

  root_block_device {
    volume_type = "gp3"
    volume_size = 30
  }

  tags = {
    Name = "ec2-challenge-devops-ajm"
  }
}

