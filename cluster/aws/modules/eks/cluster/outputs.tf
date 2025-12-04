output "eks_cluster_name" {
  #  value = aws_eks_cluster.eks_cluster[0].name
  value = var.cluster_count == 1 ? aws_eks_cluster.eks_cluster[0].name : 0
}
