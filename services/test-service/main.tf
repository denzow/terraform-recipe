module "vpc" {
  source  = "../../modules/vpc"
  service = "${var.service}"
  env     = "${var.env}"
  tfstate = "${var.tfstate}"

  vpc_cidr_block = "172.38.0.0/16"

  public_subnet_cidr_block = {
    subnet_1 = "172.38.0.0/20"
    subnet_2 = "172.38.16.0/20"
  }

  private_subnet_cidr_block = {
    subnet_1 = "172.38.48.0/20"
    subnet_2 = "172.38.64.0/20"
  }

  availability_zone = {
    subnet_1 = "ap-northeast-1a"
    subnet_2 = "ap-northeast-1c"
  }
}
