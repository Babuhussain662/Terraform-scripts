provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA352V5INCHL2UX4GN"
  secret_key = "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"
}
#Create the vpc
resource "aws_vpc" "mvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc"
  }
}