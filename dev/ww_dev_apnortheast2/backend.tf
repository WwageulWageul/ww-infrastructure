# ----------------------------------------------------------------------------------------------------------------
# terraform remote state s3 bucket
# ----------------------------------------------------------------------------------------------------------------
terraform {
  backend "s3" {
    bucket         = "x-ww-terraform-state"
    key            = "ww/terraform/dev/ww_dev_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
