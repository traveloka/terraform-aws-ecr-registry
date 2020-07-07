variable "service_name" {
  description = "Service name"
  type        = "string"
}

variable "product_domain" {
  description = "Product domain abbreviation, e.g. bei"
  type        = "string"
}

variable "cluster_role" {
  description = "Primary role/function of the cluster. See [Common Cluster Roles](https://29022131.atlassian.net/l/c/53iwUAPw) for more examples"
  type        = "string"
  default     = "app"
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

variable "scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository (`true`) or not scanned (`false`)"
  type        = "string"
  default     = "false"
}

variable "delete_timeout" {
  description = "How long to wait for a repository to be deleted. Check [Timeout](https://www.terraform.io/docs/configuration/resources.html#timeouts) for more detail."
  type        = "string"
  default     = "20m"
}
