loadbalancer_name = "my-alb"

load_balancer_type = "application"

vpc_id          = "vpc-029b17afdcbf2e395"
subnets         = ["subnet-0c740bf5fd45b86c8", "subnet-02279776fe3b18506"]
security_groups = ["sg-0bb48aadd95f18914", "sg-0e999591517f54ff2"]

target_groups = [
  {
    name_prefix      = "pref-"
    backend_protocol = "HTTP"
    backend_port     = 80
    target_type      = "instance"
    targets = {
      my_target = {
        target_id = "i-06723833f6856af78"
        port      = 80
      }
      my_other_target = {
        target_id = "i-07035d0a7e4fe9118"
        port      = 8080
      }
    }
  }
]

http_tcp_listeners = [
  {
    port               = 80
    protocol           = "HTTP"
    target_group_index = 0
  }
]

tags = {
  Environment = "Test"
}