resource "aws_security_group" "allow_ssh" {
  name        = "ssh_securitygroup"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-a55717cd"

  ingress {
    description = "TLS from VPC"
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

  tags = {
    Name = "ssh_securitygroup"
  }
}


resource "aws_security_group" "allow_ssh1" {
  name        = "ssh_securitygroup1"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-a55717cd"

  ingress {
    description = "TLS from VPC"
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

  tags = {
    Name = "ssh_securitygroup1"
  }
}

