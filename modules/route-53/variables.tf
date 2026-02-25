variable "environment" {
  type = string
}
variable "zone_name" {
  type = string
}
variable "record" {
  type = object({
    name    = string
    type    = string
    ttl     = number
    records = list(string)
  })
}
variable "common_tags" {
  type        = map(string)
  default     = {}
}