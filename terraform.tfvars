AWS_REGION         = "eu-west-2"
availability_zone1 = "eu-west-2a"
availability_zone2 = "eu-west-2b"
tags = {
  Name    = "terraform-ec2"
  Service = "backend"
}
instance_type = "t2.micro"