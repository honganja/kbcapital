resource "aws_subnet" "ap-az1" {
  vpc_id     = aws_vpc.kbcapital.id
  cidr_block = "10.0.1.0/24"

  availability_zone = "us-east-1a"

  tags = {
    Name = "kbcapital-ap-az1"
  }
}


resource "aws_subnet" "ap-az3" {
  vpc_id     = aws_vpc.kbcapital.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-1c"

  tags = {
    Name = "kbcapital-ap-az3"
  }
}
