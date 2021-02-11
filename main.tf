terraform {
  backend "s3" {
    bucket = "first-circle-remote-state"
    key    = "v1/terraform_state"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}