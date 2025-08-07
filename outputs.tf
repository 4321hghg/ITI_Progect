output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.minikube_host.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = "ssh -i ~/.ssh/${var.key_name}.pem ubuntu@${aws_instance.minikube_host.public_ip}"
}