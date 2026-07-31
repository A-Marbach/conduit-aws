output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.main.id
}

output "public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.main.public_ip
}

output "public_dns" {
  description = "EC2 Public DNS"
  value       = aws_instance.main.public_dns
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}
