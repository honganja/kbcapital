resource "aws_instance" "kbcapital-develop-web1" {
  ami = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  
  user_data = <<-EOF
                #!/bin/bash
                echo "Helo, Word" > index.html
                nohub busybox httpd -f -p 8080 &
                EOF
  
  tags = {
    Name = "kbcapital-develop-web1"
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
