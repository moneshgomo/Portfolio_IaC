terraform {
  backend "s3" {
    bucket       = "moneshgomo-state-file-management-bucket"
    key          = "portfolio-moneshgomo/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.34.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "portfolio" {
  bucket = var.portfolio_bucket
}

resource "aws_s3_bucket_public_access_block" "portfolio" {
  bucket                  = aws_s3_bucket.portfolio.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "portfolio" {
  bucket = aws_s3_bucket.portfolio.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "portfolio" {
  bucket = aws_s3_bucket.portfolio.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.portfolio.arn}/*"
      }
    ]
  })

  depends_on = [aws_s3_bucket_public_access_block.portfolio]
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.portfolio.id
  key          = "index.html"
  source       = "./website/index.html"
  content_type = "text/html"
  etag         = filemd5("./website/index.html")  ← ADD THIS LINE

}


resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.portfolio.id
  key          = "error.html"
  source       = "./website/error.html"
  content_type = "text/html"
  etag         = filemd5("./website/error.html")  ← ADD THIS LINE

}
