module "s3_bucket" {
  source      = "../../modules/s3-bucket"
  environment = "dev"
  common_tags = var.tags
}

module "route_53" {
  source      = "../../modules/route-53"
  environment = "dev"
  zone_name   = "example.com"
  record      = {
    name    = "test"
    type    = "A"
    ttl     = 300
    records = ["192.0.2.1"]
  }
  common_tags = var.tags
}