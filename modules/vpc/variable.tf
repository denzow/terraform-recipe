variable "images" {
  type = "map"
  default = {
    app = ""
  }
}

variable "keys" {
  type = "map"
  default = {
    app = ""
  }
}

variable "service" {}

variable "env" {}

variable "tfstate" {}

variable "vpc_cidr_block" {}

variable "public_subnet_cidr_block" {
  default {
    subnet_1 = ""
    subnet_2 = ""
  }
}

variable "private_subnet_cidr_block" {
  default {
    subnet_1 = ""
    subnet_2 = ""
  }
}

variable "availability_zone" {
  default {
    subnet_1 = "ap-northeast-1a"
    subnet_2 = "ap-northeast-1c"
  }
}