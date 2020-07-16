output "arn" {
  value       = "${module.with_default_policies.arn}"
  description = "Full ARN of the repository."
}

output "name" {
  value       = "${module.with_default_policies.name}"
  description = "The name of the repository."
}

output "registry_id" {
  value       = "${module.with_default_policies.registry_id}"
  description = "The registry ID where the repository was created."
}

output "repository_url" {
  value       = "${module.with_default_policies.repository_url}"
  description = "The URL of the repository "
}
