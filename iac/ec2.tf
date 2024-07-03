
resource "aws_instance" "example" {
  ami           = "ami-01b799c439fd5516a" #Es la AMI de us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-challenge-devops"
  }
  root_block_device {
    volume_size = 30 # Establece el tamaño del disco en 30 GB
  }
}