resource "aws_s3_bucket" "s3" {
  bucket = "sbrtechworld123"
  acl    = "private"

  tags = {
    Name        = "Mybucket"
    Environment = "Dev"
  }
}
