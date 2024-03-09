terraform {
  required_version = "~> 1.7.4"  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.39.0"
    }
    
  }
}

 terraform {
  backend "s3" {
    bucket = "fredtf"
    key    = "vpc/state2.tfstate"
    region = "ap-south-1"
  }
}


