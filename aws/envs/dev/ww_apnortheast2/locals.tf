locals {
  name = "${var.project_name}-${var.env}"

  common_tags = {
    env     = var.env
    project = var.project_name
  }
}
