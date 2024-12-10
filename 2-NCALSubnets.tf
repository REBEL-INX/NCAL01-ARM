# These are   for  public

resource "aws_subnet" "public-us-west-1a" {
  vpc_id                  = aws_vpc.NCal.id
  cidr_block              = "10.32.1.0/24"
  availability_zone       = "us-west-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1a"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }
}

#  resource "aws_subnet" "public-us-west-1b" {
#    vpc_id                  = aws_vpc.NCal.id
#    cidr_block              = "10.32.2.0/24"
#    availability_zone       = "us-west-1b"
#    map_public_ip_on_launch = true
#
#    tags = {
#      Name    = "public-us-west-1b"
#      Service = "application1"
#      Owner   = "Deuce"
#      Planet  = "Earth"
#    }
#  }
#

resource "aws_subnet" "public-us-west-1c" {
  vpc_id                  = aws_vpc.NCal.id
  cidr_block              = "10.32.3.0/24"
  availability_zone       = "us-west-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-west-1c"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }
}

# These are for private

resource "aws_subnet" "private-us-west-1a" {
  vpc_id            = aws_vpc.NCal.id
  cidr_block        = "10.32.11.0/24"
  availability_zone = "us-west-1a"

  tags = {
    Name    = "private-us-west-1a"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }
}

#  resource "aws_subnet" "private-us-west-1b" {
#    vpc_id            = aws_vpc.NCal.id
#    cidr_block        = "10.32.12.0/24"
#    availability_zone = "us-west-1b"
#
#    tags = {
#      Name    = "private-us-west-1b"
#      Service = "application1"
#      Owner   = "Deuce"
#      Planet  = "Earth"
#    }
# }


resource "aws_subnet" "private-us-west-1c" {
  vpc_id            = aws_vpc.NCal.id
  cidr_block        = "10.32.13.0/24"
  availability_zone = "us-west-1c"

  tags = {
    Name    = "private-us-west-1c"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }
}
