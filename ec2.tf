resource "aws_instance" "kbcapital-web2" {
  ami = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  
  user_data = <<-EOF
                #!/bin/bash
                echo "Helo, Word" > index.html
                nohub busybox httpd -f -p 8080 &
                EOF
  
  tags = {
    Name = "kbcapital-web2"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
}
