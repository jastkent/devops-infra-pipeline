variable "cluster_name" {
  description = "Nombre del clúster EKS"
  type        = string
}

variable "subnet_ids" {
  description = "Lista de subnets donde se desplegará EKS"
  type        = list(string)
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
  description = "Cantidad deseada de nodos"
  type        = number
}