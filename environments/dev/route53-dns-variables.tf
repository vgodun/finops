variable "route53_dns_zone_id" {
  type = string
}

variable "route53_dns_record_name" {
  type = string
}

variable "route53_dns_record_type" {
  type = string
}

variable "route53_dns_cloudfront_distribution_domain_name" {
  type = string
}

variable "route53_dns_cloudfront_distribution_zone_id" {
  type = string
}

variable "route53_dns_evaluate_target_health" {
  type = bool
}

variable "tags" {
  type = map(string)
}