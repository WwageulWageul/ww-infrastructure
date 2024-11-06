# ----------------------------------------------------------------------------------------------------------------
# terraform remote state s3 bucket
# ----------------------------------------------------------------------------------------------------------------
terraform {
  backend "s3" {
    bucket         = "ww-dev-db-terraform-state"
    key            = "ww/terraform/dev/ww_dev_apnortheast2/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
