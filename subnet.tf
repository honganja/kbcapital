resource "aws_subnet" "ap-prod-az1" {
  vpc_id     = aws_vpc.kbcapital_prod.id
  cidr_block = "10.10.1.0/24"

  availability_zone = "us-east-1a"

  tags = {
    Name = "kbcapital-prod-ap-az1"
  }
}


resource "aws_subnet" "ap-prod-az3" {
  vpc_id     = aws_vpc.kbcapital_prod.id
  cidr_block = "10.10.2.0/24"

  availability_zone = "us-east-1c"

  tags = {
    Name = "kbcapital-prod-ap-az3"
  }
}
