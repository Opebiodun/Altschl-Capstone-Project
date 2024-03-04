terraform {
  backend "s3" {
    bucket = "caps-app"
    region = "eu-west-2"
    key = "eks/terraform.tfstate"
  }
}
