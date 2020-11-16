output "s3_bucket_url" {
  value       = aws_s3_bucket.my_bucket.bucket_domain_name
  description = "S3 Bucket URL."
}

output "region_url" {
  value       = aws_s3_bucket.my_bucket.bucket_regional_domain_name
  description = "S3 Bucket Regional URL."

}
