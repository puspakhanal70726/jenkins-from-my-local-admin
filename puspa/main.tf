provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-09abf12253ae5ce83"
  instance_type = "t2.micro"
}
