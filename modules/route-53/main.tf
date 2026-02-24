module "route53" {
  source = "terraform-aws-modules/route53/aws//modules/zone"
  version = "~> 2.0"

  name = "${var.environment}-route53"
  tags = var.common_tags
}

resource "aws_route53_record" "cloudfront" {
  zone_id = module.route53.zone_id
  name    = var.environment
  type    = "A"
  alias {
    name                   = var.cloud_front.domain_name
    zone_id                = var.cloud_front.arn
    evaluate_target_health = false
  }
}
