resource "aws_lb" "this" {
  name               = var.lb_name
  scheme             = var.lb_scheme
  load_balancer_type = var.lb_type
  security_groups    = var.security_group_ids
  subnets            = var.subnet_ids

  enable_deletion_protection = var.enable_deletion_protection

  tags = merge(var.tags, {
    Name = var.lb_name
  })
}

  vpc_security_group_ids = var.security_group_ids

  tags = merge(var.tags, {
    Name = var.instance_name
  })
}
