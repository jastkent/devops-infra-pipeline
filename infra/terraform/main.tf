provider "aws" {
  region = var.region
  
}

module "network" {
    source = "./modules/network"
    name = var.name
    vpc_cidr = var.vpc_cidr
    public_subnet_cidrs = var.public_subnet_cidrs
}

#module "eks" {
 # source       = "./modules/k8s-cluster"
  #region       = var.region
  #cluster_name = var.cluster_name
  #subnet_ids   = module.network.public_subnet_ids
#}