provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "53877c2f-e536-4761-a63f-0fbc972a27c2"
    git_commit           = "b9f2755364aec039343c7d995ad5ce6510a1c59a"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 16:21:28"
    git_last_modified_by = "canjohnson@gmail.com"
    git_modifiers        = "canjohnson"
    git_org              = "austinchic"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

