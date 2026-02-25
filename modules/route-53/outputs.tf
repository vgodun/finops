output "arn" {
  value = module.route_53.aws_route53_record.this.arn
}
output "id" {
  value = module.route_53.aws_route53_record.this.id
}
output "domain_name" {
  value = module.route_53.aws_route53_record.this.name
}