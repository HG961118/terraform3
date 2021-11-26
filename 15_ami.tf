resource "aws_ami_from_instance" "hgkim_ami" {
    name = "hgkim-ami"
    source_instance_id = aws_instance.hgkim_web.id
    depends_on = [
        aws_instance.hgkim_web
    ]
}