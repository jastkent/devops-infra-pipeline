region = "us-east-1"
name = "dev"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = [ "10.0.1.0/24","10.0.2.0/24" ]
cluster_name = "dev-eks-cluster"
node_group_name    = "dev-node-group"
node_instance_type = "t3.medium"
desired_capacity   = 2