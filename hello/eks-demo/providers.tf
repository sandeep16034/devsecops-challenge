provider "aws" {
  access_key = "AKIA5I5VT463ACVPTGXD"
  secret_key = "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"
  region = "us-east-1"
}

data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}

