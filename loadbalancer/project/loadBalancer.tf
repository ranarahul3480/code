module "alb" {
  source = "../module/LoadBalancer"

  name = var.loadbalancer_name

  load_balancer_type = var.load_balancer_type

  vpc_id          = var.vpc_id
  subnets         = var.subnets
  security_groups = var.security_groups

  target_groups = var.target_groups

  http_tcp_listeners = var.http_tcp_listeners

  tags = var.tags
}