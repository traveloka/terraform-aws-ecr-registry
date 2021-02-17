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

variable "max_number_of_prod_images" {
  description = "Maximum number of production images stored in repository, for the default lifecycle policy"
  type        = "string"
  default     = "3"
}

variable "max_number_of_dev_images" {
  description = "Maximum number of dev images stored in repository, for the default lifecycle policy"
  type        = "string"
  default     = "5"
}

variable "lifecycle_policy" {
  description = "The lifecycle policy of this repository (`JSON` format). Keep it blank to use the default policy"
  type        = "string"
  default     = ""
}

variable "repository_policy" {
  description = "The access policy of this repository (`JSON` format)"
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

variable "aws_org_id" {
  description = "AWS Organisation id that you want give pull access to"
  type        = "string"
}

variable "environment" {
  description = "Environment where the ECR repository deployed"
  type        = "string"
}
