output "arn" {
  value       = "${module.tvlk_build_ecr.arn}"
  description = "Full ARN of the repository."
}

output "name" {
  value       = "${module.tvlk_build_ecr.name}"
  description = "The name of the repository."
}

output "registry_id" {
  value       = "${module.tvlk_build_ecr.registry_id}"
  description = "The registry ID where the repository was created."
}

output "repository_url" {
  value       = "${module.tvlk_build_ecr.repository_url}"
  description = "The URL of the repository "
}
