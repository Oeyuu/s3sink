terraform {
  backend "s3" {
    bucket = "teclify-sandbox-143805577160-terraform-state"
    key    = "msk/s3sink/terraform.tfstate"
    region = "eu-central-1"
  }
}
