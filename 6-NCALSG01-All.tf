resource "aws_security_group" "NCal-sg01-servers" {
  name        = "NCal-sg01-servers"
  description = "NCal-sg01-servers"
  vpc_id      = aws_vpc.NCal.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "NCal-sg01-servers"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }

}





resource "aws_security_group" "NCal-sg02-LB01" {
  name        = "NCal-sg02-LB01"
  description = "NCal-sg02-LB01"
  vpc_id      = aws_vpc.NCal.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "NCal-sg02-LB01"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }

}


resource "aws_security_group" "NCal-sg03-secure-servers" {
  name        = "NCal-sg03-secure-servers"
  description = "NCal-sg03-secure-servers"
  vpc_id      = aws_vpc.NCal.id

  ingress {
    description = "MyHomePage"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "NCal-sg03-secure-servers"
    Service = "application1"
    Owner   = "Deuce"
    Planet  = "Earth"
  }

}
