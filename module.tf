module "my_connector" {
  source = "/projects/teclify/training/connector"

  connector_name            = var.connector_name
  connector_description     = var.connector_description
  msk_cluster_name          = var.msk_cluster_name
  s3_bucket_distributions   = var.s3_bucket_distributions
  region                    = var.region
  connector_configuration   = var.connector_configuration
  iam_role_name             = var.iam_role_name
  distribution_url          = var.distribution_url
  distribution_version      = var.distribution_version
  distribution_content_type = var.distribution_content_type
  kafkaconnect_version      = var.kafkaconnect_version
}