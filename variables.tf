variable "portfolio_bucket"{
    description = "Portfolio S3 bucker name "
    type = string
}


variable "region" {
    description = "AWS region to deploy resources"
    type = string
    default = "us-east-1"   
}


