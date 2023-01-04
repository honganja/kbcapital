resource "aws_instance" "kbcapital-web1" {
  ami = "ami-065a2f464074b5337"
  instance_type = "t2.micro"
  
  tags = {
    Name = "kbcapital-web2"
  }
}
