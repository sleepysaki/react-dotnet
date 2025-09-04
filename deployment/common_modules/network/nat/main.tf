resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = aws_subnet.this.id

  tags = var.nat_gateway_tags

  depends_on = [aws_internet_gateway.this]
}