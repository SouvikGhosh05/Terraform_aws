variable "AWS_REGION" {
  type        = string
  description = "AWS Region information"
}

variable "availability_zone1" {
  type = string
}
variable "availability_zone2" {
  type = string
}
variable "tags" {
  type        = map(string)
  description = "Tags for the EC2 instances"
}
variable "instance_type" {
  type = string
}