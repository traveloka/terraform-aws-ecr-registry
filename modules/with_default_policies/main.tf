module "with_default_policies" {
  source = "../../"

  default_resource_naming = "false"
  environment             = "management"
  repo_name               = "${var.service_name}-${var.cluster_role}"
  product_domain          = "${var.product_domain}"
  scan_on_push            = "${var.scan_on_push}"
  delete_timeout          = "${var.delete_timeout}"
  lifecyle_policy         = "${var.default_lifecycle_policy == "true" && var.lifecycle_policy == "" ? data.template_file.default_ecr_lifecycle_policy.rendered : var.lifecycle_policy}"
  repository_policy       = "${var.repository_policy == "" ? data.aws_iam_policy_document.default_ecr_repository_p_doc.json : var.repository_policy}"
}
