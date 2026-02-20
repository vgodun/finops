# Create S3 bucket with lifecycle policy
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"
  bucket = "${var.environment}-bucket"
  acl    = "private"
  attach_policy = true
  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Sid": "LifecycleRule",
        "Effect": "Allow",
        "Principal": {
          "Service": "s3.amazonaws.com"
        },
        "Action": "s3:PutObject",
        "Resource": "arn:aws:s3:::${var.environment}-bucket/*"
      }
    ]
  })
  attach_lifecycle_configuration = true
  lifecycle_configuration = [
    {
      enabled = true
      prefix  = ""
      rules = [
        {
          id     = "rule-1"
          filter = {}
          expiration = {
            days = 190
          }
        }
      ]
    }
  ]
  tags = var.common_tags
}