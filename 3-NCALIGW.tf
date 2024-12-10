resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.NCal.id

  tags = {
    Name    = "NCal_IG"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }
}
