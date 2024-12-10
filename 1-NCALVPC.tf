# This  makes  vpc.id which is aws_vpc.app1.id

resource "aws_vpc" "NCal" {
  cidr_block = "10.32.0.0/16"

  tags = {
    Name = "NCal"
    Service = "application1"
    Owner = "Deuce"
    Planet = "Earth"
  }
}
