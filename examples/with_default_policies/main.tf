provider "aws" {
  region = "ap-southeast-1"
}

module "default_ecr" {
  source = "../../modules/with_default_policies"

  service_name   = "beitest"
  product_domain = "bei"
  environment    = "special"
  aws_org_id     = "${var.aws_org_id}"
}
