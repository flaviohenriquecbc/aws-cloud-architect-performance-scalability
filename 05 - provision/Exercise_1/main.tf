provider "aws" {
  region = "eu-central-1"
}
resource "aws_instance" "Udacity-t2" {
  count = "4"
  ami = "ami-03c3a7e4263fd998c"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
  subnet_id = "subnet-019253e6c8c2a4846"
}

resource "aws_instance" "Udacity-m4" {
  count = "2"
  ami = "ami-03c3a7e4263fd998c"
  instance_type = "m4.large"
  tags = {
    Name = "Udacity M2"
  }
  subnet_id = "subnet-019253e6c8c2a4846"
}