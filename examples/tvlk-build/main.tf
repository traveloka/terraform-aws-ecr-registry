provider "aws" {
  region = "ap-southeast-1"
}

module "tvlk_build_ecr" {
  source = "../../modules/tvlk-build"

  service_name   = "beitest"
  product_domain = "bei"
  delete_timeout = "1s"
}
