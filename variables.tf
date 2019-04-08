variable "repo_name" {
  description = "Name of the repository"
  type        = "string"
}

variable "product_domain" {
  description = "The product domain that this service belongs to"
  type        = "string"
}

variable "environment" {
  description = "Environment where the service run"
  type        = "string"
}

variable "tags" {
  description = "Custom tags for ECR Repo"
  type        = "map"
  default     = {}
}

variable "lifecyle_policy" {
  description = "The lifecycle policy of this repository"
  type        = "string"
  default     = ""
}

variable "repository_policy" {
  description = "The access policy of this repository"
  type        = "string"
  default     = ""
}
