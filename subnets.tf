# Create Subnet
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone1
  tags = {
    Name = "public_1"
  }

}

resource "aws_subnet" "private_1" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  availability_zone       = var.availability_zone2
  tags = {
    Name = "private_1"
  }
}
