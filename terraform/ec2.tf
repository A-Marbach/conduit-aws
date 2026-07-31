resource "aws_instance" "main" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.ec2.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2.name
  key_name                    = var.key_pair_name
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
