variable "connector_name" {
  type = string
}

variable "connector_description" {
  type    = string
  default = ""
}

variable "msk_cluster_name" {
  type = string
}

variable "s3_bucket_distributions" {
  type = string
}

variable "region" {
  type = string
}

variable "connector_configuration" {
  description = "Configuration for the connector"
  type = object({
    connector_class                   = string
    s3_region                         = string
    format_class                      = string
    flush_size                        = string
    schema_compatibility              = string
    partioner_class                   = string
    storage_class                     = string
    s3_bucket_name                    = string
    tasks_max                         = string
  })
}


variable "iam_role_name" {
  type = string
}

variable "distribution_url" {
  type = string
}

variable "distribution_version" {
  type = string
}

variable "distribution_content_type" {
  type = string
}

variable "kafkaconnect_version" {
  type = string
}