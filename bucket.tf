resource "aws_s3_bucket" "s3sink" {
  bucket        = "${local.full_prefix}-backup"
  force_destroy = true
}