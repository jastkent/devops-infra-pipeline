provider "aws" {
  region = var.region
  
}

module "network" {
    source = "./modules/network"
    name = var.name
    vpc_cidr = var.vpc_cidr
    public_subnet_cidrs = var.public_subnet_cidrs
}

module "eks" {
  source             = "./modules/k8s-cluster"
  cluster_name       = var.cluster_name
  subnet_ids         = module.network.public_subnet_ids
  node_group_name    = var.node_group_name
  node_instance_type = var.node_instance_type
  desired_capacity   = var.desired_capacity
}