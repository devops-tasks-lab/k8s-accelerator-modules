#terraform {
#  backend "s3" {
#    bucket       = "argicd-tfstate-bucket"
#    key          = "eks/terraform.tfstate"
#    region       = "eu-central-1"
#    use_lockfile = true
#  }
#}



data "aws_eks_cluster" "cluster" {
  count      = var.aws_cluster_count != 0 ? 1 : 0 
  name       = module.eks-cluster.eks_cluster_name
  depends_on = [module.eks-cluster]
}


data "aws_eks_cluster_auth" "cluster_auth" {
  count      = var.aws_cluster_count != 0 ? 1 : 0
  name       = module.eks-cluster.eks_cluster_name
  depends_on = [module.eks-cluster]
}
