resource "aws_subnet" "ap-develop-az1" {
  vpc_id     = aws_vpc.kbcapital-develop.id
  cidr_block = "10.11.1.0/24"

  availability_zone = "us-east-1a"

  tags = {
    Name = "kbcapital-ap-develop-az1"
  }
}


resource "aws_subnet" "ap-develop-az3" {
  vpc_id     = aws_vpc.kbcapital-develop.id
  cidr_block = "10.11.2.0/24"

  availability_zone = "us-east-1c"

  tags = {
    Name = "kbcapital-develop-ap-az3"
  }
}
