resource "aws_instance" "terraform_ec2" {
  ami             = data.aws_ami.web.id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.public_1.id
  security_groups = [aws_security_group.terraform_sg.id]

  tags      = local.tags
  user_data = <<-EOF
  #!/bin/bash
  sudo apt update
  sudo apt install -y apache2
  sudo systemctl status apache2
  sudo systemctl start apache2
  sudo chown -R $USER:$USER /var/www/html
  sudo echo "<html><body><h1>CloudOps</h1></body></html>" > /var/www/html/index.html
  EOF
}