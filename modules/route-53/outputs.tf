output "arn" {
  value = module.route53.zone_id
}

output "id" {
  value = module.route53.zone_id
}

output "domain_name" {
  value = module.route53.zone_name
}
