output "arn" {
  value       = "${module.tvlk_build.arn}"
  description = "Full ARN of the repository."
}

output "name" {
  value       = "${module.tvlk_build.name}"
  description = "The name of the repository."
}

output "registry_id" {
  value       = "${module.tvlk_build.registry_id}"
  description = "The registry ID where the repository was created."
}

output "repository_url" {
  value       = "${module.tvlk_build.repository_url}"
  description = "The URL of the repository "
}
