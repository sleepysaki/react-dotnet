output "lb_name" {
  value = aws_lb.this.name
}

output "lb_scheme" {
  value = aws_lb.this.scheme
}

output "lb_address_type" {
  value = aws_lb.this.address_type
}
