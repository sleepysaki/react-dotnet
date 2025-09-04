resource "eks_instance" "this" {
    name       = var.cluster_name
    version    = var.kubernetes_version
    iam_role   = var.cluster_iam_role
    node_role  = var.node_role_arn
}

resource "aws_eks_cluster" "this" {
    name     = var.cluster_name
    role_arn = var.iam.cluster_role_arn

    vpc_config {
        subnet_ids = var.subnet_ids
        endpoint_private_access = true
        endpoint_public_access  = true
    }

    tags = var.tags
}

resource "aws_eks_node_group" "this" {
    cluster_name    = aws_eks_cluster.this.name
    node_group_name = "managed-ng"
    node_role_arn   = var.iam.node_role_arn
    subnet_ids      = var.subnet_ids

    scaling_config {
        desired_size = var.node_desired_size
        max_size     = var.node_max_size
        min_size     = var.node_min_size
    }

    instance_types = var.node_instance_types
    tags           = var.tags
}

