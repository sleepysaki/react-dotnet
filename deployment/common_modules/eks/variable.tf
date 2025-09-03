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