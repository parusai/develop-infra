terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}


provider "aws" {
  # Configuration options

  region     = "us-east-1"
  #access_key = "AKIA2HH2ARFUHMU626NN"
  # secret_key = "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"
  access_key=var.access_key
  secret_key=var.secret_key
}
terraform {
  backend "s3" {
    bucket = "devbuksaskdjit"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}