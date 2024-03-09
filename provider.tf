locals {
  my_region = "ap-south-1"
}
provider "aws" {
   region = local.my_region
}
