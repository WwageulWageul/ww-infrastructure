locals {
  role_ids = {
    gcs_create = "${var.env}_gcs_create"
    gcs_read   = "${var.env}_gcs_read"
    gcs_update = "${var.env}_gcs_update"
    gcs_delete = "${var.env}_gcs_delete"

    vpc_create = "${var.env}_vpc_create"
    vpc_read   = "${var.env}_vpc_read"
    vpc_update = "${var.env}_vpc_update"
    vpc_delete = "${var.env}_vpc_delete"

    sql_create = "${var.env}_sql_create"
    sql_read   = "${var.env}_sql_read"
    sql_update = "${var.env}_sql_update"
    sql_delete = "${var.env}_sql_delete"
  }

  roles = {
    for k, v in local.role_ids : k
    => "projects/${var.project_id}/roles/${v}"
  }
}
