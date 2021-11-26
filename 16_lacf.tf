resource "aws_launch_configuration" "hgkim_lacf" {
  name                 = "hgkim-lacf"
  image_id             = aws_ami_from_instance.hgkim_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.hgkim_sg.id]
  key_name             = "hgkim1-key"
  user_data            = <<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF

}
