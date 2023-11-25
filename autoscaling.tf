resource "aws_autoscaling_group" "autoscaling" {
  desired_capacity          = 2
  max_size                  = 5
  min_size                  = 1
  health_check_type         = "ELB"
  health_check_grace_period = 300
  launch_configuration      = aws_launch_configuration.launch_config.id
  vpc_zone_identifier       = aws_subnet.public[*].id

  target_group_arns = [aws_lb_target_group.alb-target-group.arn]

  tag {
    key                 = "Name"
    value               = "example-asg"
    propagate_at_launch = true
  }
}