module "route53_dns" {
  source = "../../modules/route53-dns"
  version = "~> 3.4"

  zone_id                = var.route53_dns_zone_id
  record_name            = var.route53_dns_record_name
  record_type           = var.route53_dns_record_type
  cloudfront_distribution_domain_name = var.route53_dns_cloudfront_distribution_domain_name
  cloudfront_distribution_zone_id     = var.route53_dns_cloudfront_distribution_zone_id
  evaluate_target_health            = var.route53_dns_evaluate_target_health
  common_tags = var.tags
}