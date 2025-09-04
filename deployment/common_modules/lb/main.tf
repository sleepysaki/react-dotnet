resource "aws_lb" "this" {
  name               = var.lb_name
  scheme             = var.lb_scheme
  load_balancer_type = var.lb_type
  security_groups    = var.security_group_ids
  subnets            = var.subnet_ids
  enable_deletion_protection = var.enable_deletion_protection
  tags = merge(var.tags, { Name = var.lb_name })
}

resource "aws_lb_target_group" "this" {
  name     = var.target_group_name
  port     = var.target_group_port
  protocol = var.target_group_protocol
  target_type = var.target_type
  health_check {
    enabled             = true
    interval            = 30
    path                = var.health_check_path
    protocol            = var.target_group_protocol
    matcher             = "200-399"
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
  tags = merge(var.tags, { Name = var.target_group_name })
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.listener_port
  protocol          = var.listener_protocol
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}

