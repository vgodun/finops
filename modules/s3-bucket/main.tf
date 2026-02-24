module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.0"
  bucket = "${var.environment}-s3-bucket"
  acl    = "private"
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
  force_destroy = true
  tags = var.common_tags
}