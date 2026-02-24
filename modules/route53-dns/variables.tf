variable "zone_id" {
  type        = string
  description = "Route 53 zone ID"
}

variable "record_name" {
  type        = string
  description = "Record name"
}

variable "record_type" {
  type        = string
  description = "Record type"
}

variable "cloudfront_distribution_domain_name" {
  type        = string
  description = "CloudFront distribution domain name"
}

variable "cloudfront_distribution_zone_id" {
  type        = string
  description = "CloudFront distribution zone ID"
}

variable "evaluate_target_health" {
  type        = bool
  description = "Whether to evaluate target health"
}

variable "common_tags" {
  type        = map(string)
  default     = {}
  description = "Common tags to be assigned to the resources"
}