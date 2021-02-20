resource "aws_s3_bucket" "my-s3" {
  bucket = "sbrtechworld"
  acl    = "private"

  tags = {
    Name        = "Mybucket"
    Environment = "Dev"
  }
}
