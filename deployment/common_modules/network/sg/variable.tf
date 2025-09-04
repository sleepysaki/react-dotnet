variable "vpc_id" {
  type = string
}

variable "name" {
  type    = string
  default = "lab-sg"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "ingress_rules" {
  type = list(object({
    protocol    = string
    from_port   = number
    to_port     = number
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  type = list(object({
    protocol    = string
    from_port   = number
    to_port     = number
    cidr_blocks = list(string)
  }))
}