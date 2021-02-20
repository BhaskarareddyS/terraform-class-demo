resource "aws_instance" "ec2" {
  ami           = "ami-098828924dc89ea4a"
  instance_type = "t2.micro"
  key_name = "aws-ec2"
  availability_zone = "eu-west-2b"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id,aws_security_group.allow_ssh1.id] 
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.id}"

  tags = {
    Name = "ec2-dev"
  }
}

resource "aws_instance" "ec2-new" {
  ami           = "ami-098828924dc89ea4a"
  instance_type = "t3.micro"
  key_name = "aws-ec2"
  availability_zone = "eu-west-2b"
  vpc_security_group_ids = [aws_security_group.allow_ssh1.id]

  tags = {
    Name = "ec2-dev1"
  }
}

