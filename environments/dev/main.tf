module "s3_bucket" {
  source      = "../../modules/s3-bucket"
  environment = "dev"
  common_tags = var.tags
}

module "cloud_front" {
  source      = "../../modules/cloud-front"
  environment = "dev"
  common_tags = var.tags
  s3_bucket   = module.s3_bucket
}

module "route_53" {
  source      = "../../modules/route-53"
  environment = "dev"
  common_tags = var.tags
  cloud_front = module.cloud_front
}