variable "environment" {
  type = string
}

variable "common_tags" {
  type        = map(string)
  default     = {}
}

variable "s3_bucket" {
  type = object({
    arn         = string
    id          = string
    domain_name = string
  })
}