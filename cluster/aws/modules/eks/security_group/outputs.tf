output "sg_id" {
  #value = aws_security_group.eks_worker_sg[0].id
  value = var.cluster_count != 0 ? aws_security_group.eks_worker_sg[0].id : 0
}
