output "website_url" {
  description = "Portfolio Website URL"
  value       = "http://${aws_s3_bucket_website_configuration.portfolio.website_endpoint}"
}

output "bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.portfolio.id
}
