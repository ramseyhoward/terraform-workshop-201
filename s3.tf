resource "aws_s3_bucket" "example" {
  bucket        = "${var.prefix}-s3"
  force_destroy = true

  tags = {
    Environment = var.environment
  }
}
