output "cluster_role_arn" {
  value = aws_iam_role.iam_cluster_role.arn
}

output "node_role_arn" {
  value = aws_iam_role.iam_node_role.arn
}
