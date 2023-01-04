resource "aws_vpc" "kbcapital-develop" {
  cidr_block       = "10.11.0.0/16"

  tags = {
    Name = "kbcapital-develop"
  }
}
