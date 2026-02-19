resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  acl    = "private"
  force_destroy = true
  versioning {
    enabled = true
  }
  lifecycle_rule {
    enabled = true
    prefix  = ""
    noncurrent_version_transition {
      days = 90
      storage_class = "GLACIER"
    }
    noncurrent_version_expiration {
      days = 90
    }
  }
  tags = var.tags
}