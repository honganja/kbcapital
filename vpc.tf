resource "aws_vpc" "kbcapital" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "kbcapital-test"
  }
}
