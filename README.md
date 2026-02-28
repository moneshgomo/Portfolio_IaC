
Beta :

``` bash

monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$ ls
main.tf  outputs.tf  terraform.tfvars  variables.tf  website
monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$ tf init
Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.
Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 6.34.0"...
- Installing hashicorp/aws v6.34.0...
- Installed hashicorp/aws v6.34.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.


monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$ tf plan
Acquiring state lock. This may take a few moments...

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.portfolio will be created
  + resource "aws_s3_bucket" "portfolio" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "monesh-portfolio-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_s3_bucket_policy.portfolio will be created
  + resource "aws_s3_bucket_policy" "portfolio" {
      + bucket = (known after apply)
      + id     = (known after apply)
      + policy = (known after apply)
      + region = "us-east-1"
    }

  # aws_s3_bucket_public_access_block.portfolio will be created
  + resource "aws_s3_bucket_public_access_block" "portfolio" {
      + block_public_acls       = false
      + block_public_policy     = false
      + bucket                  = (known after apply)
      + id                      = (known after apply)
      + ignore_public_acls      = false
      + region                  = "us-east-1"
      + restrict_public_buckets = false
    }

  # aws_s3_bucket_website_configuration.portfolio will be created
  + resource "aws_s3_bucket_website_configuration" "portfolio" {
      + bucket           = (known after apply)
      + id               = (known after apply)
      + region           = "us-east-1"
      + routing_rules    = (known after apply)
      + website_domain   = (known after apply)
      + website_endpoint = (known after apply)

      + error_document {
          + key = "error.html"
        }

      + index_document {
          + suffix = "index.html"
        }

      + routing_rule (known after apply)
    }

  # aws_s3_object.error will be created
  + resource "aws_s3_object" "error" {
      + acl                    = (known after apply)
      + arn                    = (known after apply)
      + bucket                 = (known after apply)
      + bucket_key_enabled     = (known after apply)
      + checksum_crc32         = (known after apply)
      + checksum_crc32c        = (known after apply)
      + checksum_crc64nvme     = (known after apply)
      + checksum_sha1          = (known after apply)
      + checksum_sha256        = (known after apply)
      + content_type           = "text/html"
      + etag                   = (known after apply)
      + force_destroy          = false
      + id                     = (known after apply)
      + key                    = "error.html"
      + kms_key_id             = (known after apply)
      + region                 = "us-east-1"
      + server_side_encryption = (known after apply)
      + source                 = "./website/error.html"
      + storage_class          = (known after apply)
      + tags_all               = (known after apply)
      + version_id             = (known after apply)
    }

  # aws_s3_object.index will be created
  + resource "aws_s3_object" "index" {
      + acl                    = (known after apply)
      + arn                    = (known after apply)
      + bucket                 = (known after apply)
      + bucket_key_enabled     = (known after apply)
      + checksum_crc32         = (known after apply)
      + checksum_crc32c        = (known after apply)
      + checksum_crc64nvme     = (known after apply)
      + checksum_sha1          = (known after apply)
      + checksum_sha256        = (known after apply)
      + content_type           = "text/html"
      + etag                   = (known after apply)
      + force_destroy          = false
      + id                     = (known after apply)
      + key                    = "index.html"
      + kms_key_id             = (known after apply)
      + region                 = "us-east-1"
      + server_side_encryption = (known after apply)
      + source                 = "./website/index.html"
      + storage_class          = (known after apply)
      + tags_all               = (known after apply)
      + version_id             = (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name = (known after apply)
  + website_url = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
Releasing state lock. This may take a few moments...

monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$ tf apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.portfolio will be created
  + resource "aws_s3_bucket" "portfolio" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "monesh-portfolio-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_s3_bucket_policy.portfolio will be created
  + resource "aws_s3_bucket_policy" "portfolio" {
      + bucket = (known after apply)
      + id     = (known after apply)
      + policy = (known after apply)
      + region = "us-east-1"
    }

  # aws_s3_bucket_public_access_block.portfolio will be created
  + resource "aws_s3_bucket_public_access_block" "portfolio" {
      + block_public_acls       = false
      + block_public_policy     = false
      + bucket                  = (known after apply)
      + id                      = (known after apply)
      + ignore_public_acls      = false
      + region                  = "us-east-1"
      + restrict_public_buckets = false
    }

  # aws_s3_bucket_website_configuration.portfolio will be created
  + resource "aws_s3_bucket_website_configuration" "portfolio" {
      + bucket           = (known after apply)
      + id               = (known after apply)
      + region           = "us-east-1"
      + routing_rules    = (known after apply)
      + website_domain   = (known after apply)
      + website_endpoint = (known after apply)

      + error_document {
          + key = "error.html"
        }

      + index_document {
          + suffix = "index.html"
        }

      + routing_rule (known after apply)
    }

  # aws_s3_object.error will be created
  + resource "aws_s3_object" "error" {
      + acl                    = (known after apply)
      + arn                    = (known after apply)
      + bucket                 = (known after apply)
      + bucket_key_enabled     = (known after apply)
      + checksum_crc32         = (known after apply)
      + checksum_crc32c        = (known after apply)
      + checksum_crc64nvme     = (known after apply)
      + checksum_sha1          = (known after apply)
      + checksum_sha256        = (known after apply)
      + content_type           = "text/html"
      + etag                   = (known after apply)
      + force_destroy          = false
      + id                     = (known after apply)
      + key                    = "error.html"
      + kms_key_id             = (known after apply)
      + region                 = "us-east-1"
      + server_side_encryption = (known after apply)
      + source                 = "./website/error.html"
      + storage_class          = (known after apply)
      + tags_all               = (known after apply)
      + version_id             = (known after apply)
    }

  # aws_s3_object.index will be created
  + resource "aws_s3_object" "index" {
      + acl                    = (known after apply)
      + arn                    = (known after apply)
      + bucket                 = (known after apply)
      + bucket_key_enabled     = (known after apply)
      + checksum_crc32         = (known after apply)
      + checksum_crc32c        = (known after apply)
      + checksum_crc64nvme     = (known after apply)
      + checksum_sha1          = (known after apply)
      + checksum_sha256        = (known after apply)
      + content_type           = "text/html"
      + etag                   = (known after apply)
      + force_destroy          = false
      + id                     = (known after apply)
      + key                    = "index.html"
      + kms_key_id             = (known after apply)
      + region                 = "us-east-1"
      + server_side_encryption = (known after apply)
      + source                 = "./website/index.html"
      + storage_class          = (known after apply)
      + tags_all               = (known after apply)
      + version_id             = (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name = (known after apply)
  + website_url = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.portfolio: Creating...
╷
│ Error: creating S3 Bucket (monesh-portfolio-bucket): operation error S3: CreateBucket, https response error StatusCode: 409, RequestID: 3Y9WZSBTMQMEQQMM, HostID: 6DQyKhPKwZZ/O+uBCh2CfCUzj/FkQpEBagBYOlLISqsJEeG/mKJFrYjN+0Kr9dfuS6rRthurt6fw7PH2pNPJ4Q3Hgd5rVUuHxKUscAl9fcM=, BucketAlreadyExists: The requested bucket name is not available. The bucket namespace is shared by all users of the system. Please select a different name and try again.
│
│   with aws_s3_bucket.portfolio,
│   on main.tf line 22, in resource "aws_s3_bucket" "portfolio":
│   22: resource "aws_s3_bucket" "portfolio" {
│
╵
Releasing state lock. This may take a few moments...
monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$

monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$ tf apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.portfolio will be created
  + resource "aws_s3_bucket" "portfolio" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "moneshgomo-portfolio-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_s3_bucket_policy.portfolio will be created
  + resource "aws_s3_bucket_policy" "portfolio" {
      + bucket = (known after apply)
      + id     = (known after apply)
      + policy = (known after apply)
      + region = "us-east-1"
    }

  # aws_s3_bucket_public_access_block.portfolio will be created
  + resource "aws_s3_bucket_public_access_block" "portfolio" {
      + block_public_acls       = false
      + block_public_policy     = false
      + bucket                  = (known after apply)
      + id                      = (known after apply)
      + ignore_public_acls      = false
      + region                  = "us-east-1"
      + restrict_public_buckets = false
    }

  # aws_s3_bucket_website_configuration.portfolio will be created
  + resource "aws_s3_bucket_website_configuration" "portfolio" {
      + bucket           = (known after apply)
      + id               = (known after apply)
      + region           = "us-east-1"
      + routing_rules    = (known after apply)
      + website_domain   = (known after apply)
      + website_endpoint = (known after apply)

      + error_document {
          + key = "error.html"
        }

      + index_document {
          + suffix = "index.html"
        }

      + routing_rule (known after apply)
    }

  # aws_s3_object.error will be created
  + resource "aws_s3_object" "error" {
      + acl                    = (known after apply)
      + arn                    = (known after apply)
      + bucket                 = (known after apply)
      + bucket_key_enabled     = (known after apply)
      + checksum_crc32         = (known after apply)
      + checksum_crc32c        = (known after apply)
      + checksum_crc64nvme     = (known after apply)
      + checksum_sha1          = (known after apply)
      + checksum_sha256        = (known after apply)
      + content_type           = "text/html"
      + etag                   = (known after apply)
      + force_destroy          = false
      + id                     = (known after apply)
      + key                    = "error.html"
      + kms_key_id             = (known after apply)
      + region                 = "us-east-1"
      + server_side_encryption = (known after apply)
      + source                 = "./website/error.html"
      + storage_class          = (known after apply)
      + tags_all               = (known after apply)
      + version_id             = (known after apply)
    }

  # aws_s3_object.index will be created
  + resource "aws_s3_object" "index" {
      + acl                    = (known after apply)
      + arn                    = (known after apply)
      + bucket                 = (known after apply)
      + bucket_key_enabled     = (known after apply)
      + checksum_crc32         = (known after apply)
      + checksum_crc32c        = (known after apply)
      + checksum_crc64nvme     = (known after apply)
      + checksum_sha1          = (known after apply)
      + checksum_sha256        = (known after apply)
      + content_type           = "text/html"
      + etag                   = (known after apply)
      + force_destroy          = false
      + id                     = (known after apply)
      + key                    = "index.html"
      + kms_key_id             = (known after apply)
      + region                 = "us-east-1"
      + server_side_encryption = (known after apply)
      + source                 = "./website/index.html"
      + storage_class          = (known after apply)
      + tags_all               = (known after apply)
      + version_id             = (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bucket_name = (known after apply)
  + website_url = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.portfolio: Creating...
aws_s3_bucket.portfolio: Creation complete after 8s [id=moneshgomo-portfolio-bucket]
aws_s3_bucket_public_access_block.portfolio: Creating...
aws_s3_bucket_website_configuration.portfolio: Creating...
aws_s3_object.error: Creating...
aws_s3_object.index: Creating...
aws_s3_bucket_public_access_block.portfolio: Creation complete after 2s [id=moneshgomo-portfolio-bucket]
aws_s3_bucket_policy.portfolio: Creating...
aws_s3_bucket_website_configuration.portfolio: Creation complete after 2s [id=moneshgomo-portfolio-bucket]
aws_s3_object.error: Creation complete after 2s [id=moneshgomo-portfolio-bucket/error.html]
aws_s3_bucket_policy.portfolio: Creation complete after 1s [id=moneshgomo-portfolio-bucket]
aws_s3_object.index: Creation complete after 3s [id=moneshgomo-portfolio-bucket/index.html]
Releasing state lock. This may take a few moments...

Apply complete! Resources: 6 added, 0 changed, 0 destroyed.

Outputs:

bucket_name = "moneshgomo-portfolio-bucket"
website_url = "http://moneshgomo-portfolio-bucket.s3-website-us-east-1.amazonaws.com"
monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$

monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$ terraform output
bucket_name = "moneshgomo-portfolio-bucket"
website_url = "http://moneshgomo-portfolio-bucket.s3-website-us-east-1.amazonaws.com"
monesh@GOMO:~/Portfolio_IaC/Portfolio_IaC$



```