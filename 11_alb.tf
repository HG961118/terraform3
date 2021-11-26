resource "aws_lb" "hgkim_alb" {
    name = "hgkim-alb"
    internal = false 
    load_balancer_type = "application"
    security_groups = [aws_security_group.hgkim_sg.id]
    subnets = [aws_subnet.hgkim_puba.id, aws_subnet.hgkim_pubc.id]
    tags = {
        "Name" = "hgkim-alb"
    }
}