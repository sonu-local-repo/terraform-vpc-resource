terraform{
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.66.0"
     }
    }
    required_version = "~> 1.0.11"
}

provider "aws" {
    region = "us-east-1"
    profile = "default"
}