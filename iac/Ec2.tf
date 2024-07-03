data "aws_ami" "ubuntu" {
  most_recent = true

}

resource "aws_security_group" "allow_all_traffic_ipv4" {
  name        = "allow_all_traffic_ipv4"
  description = "Allow-IP4-AllPorts"
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0bb323ae9abcae1a0"
  instance_type = "t2.micro"

  tags = {
    name = "ec2-challenge-devops"
  }

  root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }

  vpc_security_group_ids = [aws_security_group.allow_all_traffic_ipv4.id]
}

