output "arn" {
  value       = aws_route53_record.this.arn
  description = "ARN of the record set"
}

output "id" {
  value       = aws_route53_record.this.id
  description = "ID of the record set"
}