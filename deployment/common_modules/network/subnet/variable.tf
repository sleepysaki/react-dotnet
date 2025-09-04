variable "subnets" {
  type = list(object({
    cidr_block             = string
    availability_zone      = string
    map_public_ip_on_launch = bool
    name                   = string
  }))
  description = "Subnets in the VPC"
  default     = []
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID where subnets will be created"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the subnets"
  default     = {}
}
