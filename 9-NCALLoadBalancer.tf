resource "aws_lb" "NCal_alb" {
  name               = "NCal-load-balancer"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.NCal-sg02-LB01.id]
  subnets            = [
    aws_subnet.public-us-west-1a.id,
    #aws_subnet.public-us-west-1b.id,
    aws_subnet.public-us-west-1c.id
  ]
  enable_deletion_protection = false


  tags = {
    Name    = "NCalLoadBalancer"
    Service = "Multiapp"
    Owner   = "Deuce"
    Project = "Multiapp"
  }
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.NCal_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.NCal_tg.arn
  }
}

data "aws_acm_certificate" "cert" {
  domain   = "hrrsvseverybody.click"
  statuses = ["ISSUED"]
  most_recent = true
}


resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.NCal_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"  # or whichever policy suits your requirements
  certificate_arn   = data.aws_acm_certificate.cert.arn



  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.app2_tg_443.arn
  }
}

output "lb_dns_name" {
  value       = aws_lb.NCal_alb.dns_name
  description = "The DNS name of the NCal Load Balancer."
}
