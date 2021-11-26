resource "aws_autoscaling_attachment" "hgkim_asatt" {
    autoscaling_group_name = aws_autoscaling_group.hgkim_atsg.id
    alb_target_group_arn = aws_lb_target_group.hgkim_albtg.arn
}