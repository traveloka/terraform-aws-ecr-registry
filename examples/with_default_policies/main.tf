provider "aws" {
  region = "ap-southeast-1"
}

module "tvlk_build_ecr" {
  source = "../../modules/with_default_policies"

  service_name   = "beitest"
  product_domain = "bei"
  aws_org_id     = "${var.aws_org_id}"
}
