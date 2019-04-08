locals {
  tags = {
    Name          = "${module.repo_name.name}"
    ProductDomain = "${var.product_domain}"
    Environment   = "${var.environment}"
    ManagedBy     = "terraform"
  }
}

module "repo_name" {
  source = "github.com/traveloka/terraform-aws-resource-naming?ref=v0.11.0"

  name_prefix   = "${var.repo_name}"
  resource_type = "ecr_repository"
}

resource "aws_ecr_repository" "this" {
  name = "${module.repo_name.name}"
  tags = "${merge(local.tags, var.tags)}"
}

resource "aws_ecr_lifecycle_policy" "this" {
  count      = "${var.lifecyle_policy == "" ? 0 : 1}"
  repository = "${aws_ecr_repository.this.name}"
  policy     = "${var.lifecyle_policy}"
}

resource "aws_ecr_repository_policy" "this" {
  count      = "${var.repository_policy == "" ? 0 : 1}"
  repository = "${aws_ecr_repository.this.name}"
  policy     = "${var.repository_policy}"
}
