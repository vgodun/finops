module "cloud_front" {
  source = "terraform-aws-modules/cloudfront/aws//modules/s3-cdn"
  version = "~> 2.0"
  aliases = ["${var.environment}-cloudfront"]
  comment             = "${var.environment}-cloudfront"
  enabled             = true
  is_ipv6_enabled     = true
  price_class         = "PriceClass_100"
  default_root_object = "index.html"
  origin {
    domain_name = module.s3_bucket.domain_name
    origin_id   = "s3-${var.environment}-origin"
    s3 {
      origin_access_identity = "${var.environment}-origin-access-identity"
    }
  }
  default_cache_behavior {
    target_origin_id = "s3-${var.environment}-origin"
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  tags = var.common_tags
}