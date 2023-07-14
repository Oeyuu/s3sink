# resource "aws_iam_role" "iam-role" {
#   name = "super_user_role"

#   assume_role_policy = <<EOF
#     {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "Service": "kafkaconnect.amazonaws.com"
#       },
#       "Action": "sts:AssumeRole"
#     }   
#   ]
# }
# EOF
# }

# locals {
#   msk_cluster_id = split("/", split(":", data.aws_msk_cluster.msk_cluster.arn)[5])[2]
# }

# resource "aws_iam_policy" "iam-policy" {
#   name        = "super_user_role-policy"
#   description = "A test policy"

#   policy = jsonencode({

#     Version : "2012-10-17",
#     Statement : [
#       {
#         Effect : "Allow",
#         Action : [
#           "s3:*",
#           "kms:*",
#           "logs:*",
#           "kafka-cluster:*"
#         ],
#         Resource : [
#           "arn:aws:kafka:${data.aws_region.current.name}:${local.acc_id}:cluster/${var.msk_cluster_name}/${local.msk_cluster_id}",
#           "arn:aws:kafka:${data.aws_region.current.name}:${local.acc_id}:topic/${var.msk_cluster_name}/${local.msk_cluster_id}*",
#           "arn:aws:kafka:${data.aws_region.current.name}:${local.acc_id}:group/${var.msk_cluster_name}/${local.msk_cluster_id}*",
#           "*"
#         ]
#       }
#     ]
#   })
# }


# resource "aws_iam_role_policy_attachment" "iam-policy" {
#   role       = aws_iam_role.iam-role.name
#   policy_arn = aws_iam_policy.iam-policy.arn
# }
