
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0f19324397f53458f"
  instance_type = "t3.micro"

  tags = {
    Name = "GitHub-Actions-EC2"
  }
}

output "instance_id" {
  value = aws_instance.demo.id
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}
