data "aws_msk_cluster" "msk_cluster" {
  cluster_name = var.msk_cluster_name
}

# data "aws_s3_bucket" "distributions" {
#   bucket = "${local.full_prefix}-distributions"
# }

data "aws_iam_role" "super_user" {
  name = var.iam_role_name
}

data "aws_security_groups" "msk_sg" {
  tags = {
    ClusterName = var.msk_cluster_name
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = data.aws_security_groups.msk_sg.vpc_ids
  }
}

data "external" "kafka_topics_list" {
  program = ["/bin/bash", "${path.module}/scripts/kafka-topics-list.sh", data.aws_msk_cluster.msk_cluster.bootstrap_brokers_public_sasl_iam]
}
