resource "aws_instance" "ec2-instance1" {
  ami = "ami-0ca4d5db4872d0c28"
  instance_type = "t2.micro"

  tags = {
    Name = "demo-server1"
  }
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-00142eb1747a493d9"  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {
    Name = "demo-server2"
  }
}