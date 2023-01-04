resource "aws_instance" "kbcapital-prod-web1" {
  ami = "ami-065a2f464074b5337"
  instance_type = "t2.micro"
  
  tags = {
    Name = "kbcapital-prod-web1"
  }
}
