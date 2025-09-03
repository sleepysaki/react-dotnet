variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "lb_type" {
  description = "The type of the load balancer (e.g., application, network)"
  type        = string
  default     = "application"  
}

variable "lb_scheme" {
  description = "The scheme of the load balancer"
  type        = string
}

variable "lb_address_type" {
  description = "The type of the load balancer's address"
  type        = string
}

variable "enable_deletion_protection" {
  description = "Whether to enable deletion protection for the load balancer"
  type        = bool
}