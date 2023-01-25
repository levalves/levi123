resource "aws_s3_bucket" "this" {
  bucket = "my-bucket-levinux"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Hash        = "abc123"
    Hash1       = "abc123"
    Hash2       = "abc123"
    Hash3       = "abc123"
  }
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = "private"
}
