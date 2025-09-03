output "cluster_name" {
  value = aws_eks_cluster.this.name
}

output "kubernetes_version" {
  value = aws_eks_cluster.this.kubernetes_version
}