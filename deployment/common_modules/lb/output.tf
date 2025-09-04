output "lb_name" {
  value = aws_lb.this.name
}

output "lb_scheme" {
  value = aws_lb.this.scheme
}

output "lb_address_type" {
  value = aws_lb.this.address_type
}

output "lb_arn" {
  value = aws_lb.this.arn
}

output "lb_dns_name" {
  value = aws_lb.this.dns_name
}

output "target_group_arn" {
  value = aws_lb_target_group.this.arn
}