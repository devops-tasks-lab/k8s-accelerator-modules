output "vpc_id" {
  #value = aws_vpc.eks_vpc[0].id
  value = var.cluster_count != 0 ? aws_vpc.eks_vpc[0].id : 0
}

output "subnet_id" {
  #value = aws_subnet.eks_subnets[*].id
  value = var.cluster_count != 0 ? aws_subnet.eks_subnets[*].id : []
}

output "cidr_block" {
  #value = aws_vpc.eks_vpc[0].cidr_block
  value = var.cluster_count != 0 ? aws_vpc.eks_vpc[0].cidr_block : 0
}
