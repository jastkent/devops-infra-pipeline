variable "region" {
  description = "Región AWS donde se crea el clúster"
  type        = string
}

variable "name" {
    description = "Prefijo para los recursos"
    type = string
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs para subnets publicas"
  type = list(string)
}

## EKS
variable "cluster_name" {
    description = "Nombre del cluster EKS"
    type = string
}

variable "node_group_name" {
  description = "Nombre del grupo de nodos"
  type        = string
}

variable "node_instance_type" {
  description = "Tipo de instancia EC2 para los nodos"
  type        = string
}

variable "desired_capacity" {
  description = "Cantidad de nodos a lanzar"
  type        = number
}