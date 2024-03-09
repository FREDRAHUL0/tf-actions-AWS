terraform {
  required_version = "~> 1.7.4"  
   cloud {
    organization = "Terraform_AWS_MMC"

    workspaces {
      name = "tf-actions-AWS-TF-CLOUD"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.39.0"
    }
    
  }
}

