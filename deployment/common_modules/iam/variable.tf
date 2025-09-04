variable "iam_cluster_role" {
  description = "The IAM role to associate with the EKS cluster"
  type        = string
}

variable "iam_node_role" {
  description = "The IAM role to associate with the EKS worker nodes"
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