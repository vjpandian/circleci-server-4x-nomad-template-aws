terraform {
   backend "s3" {
      bucket = "<s3-bucket-for-storing-state" # replace this with a new bucket for persisting tf state
      key    = "<tf-state-folder"
      region = "<aws-region-for-tf-state-bucket>"
  }
  required_version = ">= 0.15.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=4.4.0"
    }
     cloudinit = {
      version = ">=2.0"
      source  = "hashicorp/cloudinit"
    }
  }
}
