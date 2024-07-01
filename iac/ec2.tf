resource "aws_instance" "ec2_challenge_devops" {
  ami           = var.ami_id
  instance_type = var.instance_type
  root_block_device {
    volume_size = 30
  }
  tags = {
    Name = "ec2-challenge-devops"
  }
}


