variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use"
  type        = string
}

variable "cluster_iam_role" {
  description = "The IAM role to associate with the EKS cluster"
  type        = string
}

variable "node_iam_role" {
  description = "The IAM role to associate with the EKS worker nodes"
  type        = string
}

variable "region" {
    description = "AWS region"
    type        = string
}

variable "cluster_name" {
    description = "EKS cluster name"
    type        = string
}

variable "cluster_role_arn" {
    description = "IAM role ARN for EKS cluster"
    type        = string
}

variable "node_role_arn" {
    description = "IAM role ARN for EKS node group"
    type        = string
}

variable "subnet_ids" {
    description = "List of subnet IDs for EKS"
    type        = list(string)
}

variable "node_desired_size" {
    description = "Desired node group size"
    type        = number
    default     = 2
}

variable "node_max_size" {
    description = "Max node group size"
    type        = number
    default     = 3
}

variable "node_min_size" {
    description = "Min node group size"
    type        = number
    default     = 1
}

variable "node_instance_types" {
    description = "List of EC2 instance types for node group"
    type        = list(string)
    default     = ["t3.medium"]
}

variable "tags" {
    description = "Tags to apply to resources"
    type        = map(string)
    default     = {}
}

