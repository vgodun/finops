module "route_53" {
  source = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.0"
  zone_name = var.zone_name
  records  = [var.record]
  set_identifier = "${var.environment}-record"
  tags = var.common_tags
}