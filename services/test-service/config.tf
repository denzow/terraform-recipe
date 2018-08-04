terraform {
  backend "s3" {
    bucket = "my-terraform-aws-state"
    key    = "services/test-service/terraform.tfstate"
    region = "ap-northeast-1"
    profile = "terraform-profile"
  }
}