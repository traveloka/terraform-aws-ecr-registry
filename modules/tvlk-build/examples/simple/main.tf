provider "aws" {
  region = "ap-southeast-1"
}

module "tvlk_build_ecr" {
  source = "../.."

  service_name   = "beitest"
  product_domain = "bei"
  delete_timeout = "1s"
}
