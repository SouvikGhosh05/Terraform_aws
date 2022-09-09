output "publicip_ec2" {
  value = aws_instance.terraform_ec2.public_ip
}
output "public_subnetid" {
  value = aws_subnet.public_1.vpc_id
}

