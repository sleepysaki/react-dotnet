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
  default     = "internal"
}

variable "lb_address_type" {
  description = "The type of the load balancer's address"
  type        = string
}

variable "enable_deletion_protection" {
  description = "Whether to enable deletion protection for the load balancer"
  type        = bool
}


variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "enable_deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "target_group_name" {
  description = "Target group name"
  type        = string
}

variable "target_group_port" {
  description = "Target group port"
  type        = number
  default     = 80
}

variable "target_group_protocol" {
  description = "Target group protocol"
  type        = string
  default     = "HTTP"
}

variable "target_type" {
  description = "Target type (instance, ip, lambda)"
  type        = string
  default     = "instance"
}

variable "health_check_path" {
  description = "Health check path"
  type        = string
  default     = "/"
}

variable "listener_port" {
  description = "Listener port"
  type        = number
  default     = 80
}

variable "listener_protocol" {
  description = "Listener protocol"
  type        = string
  default     = "HTTP"
}


