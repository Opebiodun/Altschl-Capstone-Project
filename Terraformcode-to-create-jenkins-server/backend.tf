terraform {
 backend "s3" {
    bucket = "capst-app"
   region = "eu-west-2"
    key = "jenkins-server/terraform.tfstate"
 }
}
