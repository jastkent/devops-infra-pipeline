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