locals {
  tags = {
    Name          = "${var.default_resource_naming == "true" ? module.repo_name.name : var.repo_name}"
    ProductDomain = "${var.product_domain}"
    Environment   = "${var.environment}"
    ManagedBy     = "terraform"
  }
}
