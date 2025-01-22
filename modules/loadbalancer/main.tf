resource "aws_lb" "app" {
  name = "mean-stack-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [var.security_group_id]
  subnets = var.public_subnets
}

resource "aws_lb_target_group" "app" {
  name = "mean-stack-tg"
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id

  health_check {
    path = "/"
    port = "traffic-port"
  }
}

resource "aws_lb_listener" "app" {
  load_balancer_arn = aws_lb.app.arn
  port = 80
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.app.arn
  }
}