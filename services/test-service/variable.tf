variable "images" {
  default {
    app = "ami-374db956"
  }
}

variable "keys" {
  default {
    app = "my-key"
  }
}

variable "service" {
  default = "test-service"
}

variable "env" {
  default = "prd"
}

variable "tfstate" {
  default = "services/test-service"
}

variable "vpc_cidr_block" {
  default = "172.38.0.0/16"
}

variable "public_subnet_cidr_block" {
  default {
    subnet_1 = "172.38.0.0/20"
    subnet_2 = "172.38.16.0/20"
  }
}

variable "private_subnet_cidr_block" {
  default {
    subnet_1 = "172.38.48.0/20"
    subnet_2 = "172.38.64.0/20"
  }
}

variable "availability_zone" {
  default {
    subnet_1 = "ap-northeast-1a"
    subnet_2 = "ap-northeast-1c"
  }
}