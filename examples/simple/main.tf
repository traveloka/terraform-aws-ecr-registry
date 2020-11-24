provider "aws" {
  region = "ap-southeast-1"
}

locals {
  repo_name      = "webdemo"
  product_domain = "web"
}

module "ecr" {
  # source = "github.com/traveloka/terraform-aws-ecr-repository?ref=v0.1.0"
  source = "../.."

  repo_name      = local.repo_name
  product_domain = local.product_domain
  environment    = var.environment

  lifecyle_policy = file("${path.module}/lifecycle-policy.json")
}

