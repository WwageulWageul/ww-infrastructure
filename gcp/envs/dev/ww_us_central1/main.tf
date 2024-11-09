module "db" {
  source      = "../../../modules/sql_single_az"
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
  name_prefix = "${var.env}-${var.gcp_region}"
}
