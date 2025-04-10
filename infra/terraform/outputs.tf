output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "certificate_authority_data" {
  value = module.eks.certificate_authority_data
}