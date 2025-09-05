variable "fargate_profile_name" {
    description = "The name of the Fargate profile"
    type        = string
    default     = "default"
}

variable "pod_execution_role_arn" {
    description = "IAM role ARN for EKS pod execution"
    type        = string
}

variable "selector" {
    description = "The namespace to select for the Fargate profile"
    type        = string
    default     = "default"
}

variable "subnet_ids" {
    description = "List of subnet IDs for the Fargate profile"
    type        = list(string)
  
}