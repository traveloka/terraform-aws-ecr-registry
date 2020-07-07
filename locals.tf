locals {
  tags = {
    Name          = "${module.repo_name.name}"
    ProductDomain = "${var.product_domain}"
    Environment   = "${var.environment}"
    ManagedBy     = "terraform"
  }
}
