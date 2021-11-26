resource "aws_placement_group" "hgkim_pg" {
  name = "hgkim-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "hgkim_atsg" {
  name = "hgkim-atsg"
  min_size = 2
  max_size = 10
  health_check_grace_period = 60
  health_check_type = "EC2"
  desired_capacity = 2
  force_delete = true
  launch_configuration = aws_launch_configuration.hgkim_lacf.name
  #placement_group = aws_placement_group.hgkim_pg.id
  vpc_zone_identifier = [aws_subnet.hgkim_puba.id, aws_subnet.hgkim_pubc.id]
  }