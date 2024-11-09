locals {
  name = "${var.env}-${var.gcp_region}"

  # common_tags = {
  #   env     = var.env
  #   project = var.project_name
  # }
}
