
data "aws_route53_zone" "main" {
  name         = "hrrsvseverybody.click"  # The domain name you want to look up
  private_zone = false
}


resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.main.zone_id
  name    = "hrrsvseverybody.click"
  type    = "A"

  alias {
    name                   = aws_lb.NCal_alb.dns_name
    zone_id                = aws_lb.NCal_alb.zone_id
    evaluate_target_health = true
  }
}
