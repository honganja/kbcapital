resource "aws_vpc" "kbcapital_prod" {
  cidr_block       = "10.10.0.0/16"

  tags = {
    Name = "kbcapital-prod"
  }
}
