# Use this systax to configure aws provider
provider "aws" {
  region = "us-west-1"
  profile = "terraform-user"  
}

# Use this Terraform syntax to create a Terraform StateFile in S3bucket
# use this link https://developer.hashicorp.com/terraform/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket = "mys3bucket1010dd" # the default was change to my bucket name
    key    = "terraform.tfstate.dev" # the default was change for description purpose
    region = "us-east-1"
    profile = "terraform-user" 
  }
}