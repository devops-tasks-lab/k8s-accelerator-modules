output "role_arn" {
  #value = aws_iam_role.eks_cluster_role[0].arn
  value = length(aws_iam_role.eks_cluster_role) > 0 ? aws_iam_role.eks_cluster_role[0].arn : null
}

output "role_name" {
  #value = aws_iam_role.eks_cluster_role[0].name
  value = length(aws_iam_role.eks_cluster_role) > 0 ? aws_iam_role.eks_cluster_role[0].name : null
}
