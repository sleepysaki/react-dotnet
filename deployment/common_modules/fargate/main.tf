resource "aws_eks_fargate_profile" "profile1" {
  cluster_name           = var.aws_eks_cluster.this.name
  fargate_profile_name   = var.fargate_profile_name
  pod_execution_role_arn = var.aws_iam_role.pod_execution_role_arn
  subnet_ids             = var.aws_subnet.subnet.id

  selector {
    namespace = "default"
  }
}