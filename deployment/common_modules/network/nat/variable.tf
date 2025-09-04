variable "nat_gateway_allocation_id" {
  description = "The allocation ID of the Elastic IP to associate with the NAT Gateway"
  type        = string
}

variable "nat_gateway_subnet_id" {
  description = "The subnet ID in which to place the NAT Gateway (should be a public subnet)"
  type        = string
}

variable "nat_gateway_tags" {
  description = "A map of tags to assign to the NAT Gateway"
  type        = map(string)
  default = {
    Name = "gw NAT"
  }
}
