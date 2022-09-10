terraform {
  backend "s3" {
    bucket = "terraform-bucketst"
    key    = "tstates/terraform.tfstate"
    region = "eu-west-2"
  }
}