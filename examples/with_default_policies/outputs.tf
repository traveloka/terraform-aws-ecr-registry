output "arn" {
  value       = module.default_ecr.arn
  description = "Full ARN of the repository."
}

output "name" {
  value       = module.default_ecr.name
  description = "The name of the repository."
}

output "registry_id" {
  value       = module.default_ecr.registry_id
  description = "The registry ID where the repository was created."
}

output "repository_url" {
  value       = module.default_ecr.repository_url
  description = "The URL of the repository "
}

