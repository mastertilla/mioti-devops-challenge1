resource "aws_instance" "ec2-challenge-devops" {
  ami           = "ami-0776c814353b4814d"
  instance_type = "t2.micro"
  root_block_device {
    volume_type = "gp3"
    volume_size = 30
  }

  tags = {
    Name = "ec2-challenge-devops"
  }
}
resource "aws_ec2_instance_state" "ec2-challenge-devops" {
  instance_id = aws_instance.ec2-challenge-devops.id
  state       = "stopped"
}