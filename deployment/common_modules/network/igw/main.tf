resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = var.tags
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge(var.tags, {
    Name = "public-route-table"
  })
}
