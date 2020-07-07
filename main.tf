module "repo_name" {
  source = "github.com/traveloka/terraform-aws-resource-naming?ref=v0.18.1"

  name_prefix   = "${var.repo_name}"
  resource_type = "ecr_repository"
}

resource "aws_ecr_repository" "this" {
  name                 = "${var.standard_resource_naming == "true" ? module.repo_name.name : var.repo_name}"
  image_tag_mutability = "${var.image_tag_mutability}"
  tags                 = "${merge(local.tags, var.tags)}"

  image_scanning_configuration {
    scan_on_push = "${var.scan_on_push}"
  }

  timeouts {
    delete = "${var.delete_timeout}"
  }
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
