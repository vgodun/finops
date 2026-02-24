variable "environment" {
  type = string
}

variable "common_tags" {
  type        = map(string)
  default     = {}
}

variable "cloud_front" {
  type = object({
    arn         = string
    id          = string
    domain_name = string
  })
}