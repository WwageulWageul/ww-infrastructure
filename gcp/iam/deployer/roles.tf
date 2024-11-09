resource "google_project_iam_custom_role" "vpc_create" {
  role_id     = local.role_ids.vpc_create
  title       = "VPC Create"
  description = "Custom role for creating VPCs"
  permissions = [
    "compute.networks.create",
    "compute.subnetworks.create",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "vpc_update" {
  role_id     = local.role_ids.vpc_update
  title       = "VPC Update"
  description = "Custom role for updating VPCs"
  permissions = [
    "compute.networks.update",
    "compute.subnetworks.update",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "vpc_read" {
  role_id     = local.role_ids.vpc_read
  title       = "VPC Read"
  description = "Custom role for reading VPCs"
  permissions = [
    "compute.networks.get",
    "compute.subnetworks.get",
    "compute.networks.list",
    "compute.subnetworks.list",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "vpc_delete" {
  role_id     = local.role_ids.vpc_delete
  title       = "VPC Delete"
  description = "Custom role for deleting VPCs"
  permissions = [
    "compute.networks.delete",
    "compute.subnetworks.delete",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "sql_create" {
  role_id     = local.role_ids.sql_create
  title       = "SQL Create"
  description = "Custom role for creating SQL instances"
  permissions = [
    "cloudsql.instances.create",
    "cloudsql.databases.create",
    "cloudsql.users.create",
    "cloudsql.backups.create",
    "cloudsql.sslCerts.create",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "sql_update" {
  role_id     = local.role_ids.sql_update
  title       = "SQL Update"
  description = "Custom role for updating SQL instances"
  permissions = [
    "cloudsql.instances.update",
    "cloudsql.databases.update",
    "cloudsql.users.update",
    "cloudsql.backups.update",
    # "cloudsql.sslCerts.update",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "sql_read" {
  role_id     = local.role_ids.sql_read
  title       = "SQL Read"
  description = "Custom role for reading SQL instances"
  permissions = [
    "cloudsql.instances.get",
    "cloudsql.instances.list",
    "cloudsql.databases.get",
    "cloudsql.databases.list",
    "cloudsql.users.list",
    "cloudsql.backups.list",
    "cloudsql.operations.get",
    "cloudsql.operations.list",
    "cloudsql.sslCerts.list",
  ]
  project = var.project_id
}

resource "google_project_iam_custom_role" "sql_delete" {
  role_id     = local.role_ids.sql_delete
  title       = "SQL Delete"
  description = "Custom role for deleting SQL instances"
  permissions = [
    "cloudsql.instances.delete",
    "cloudsql.databases.delete",
    "cloudsql.users.delete",
    "cloudsql.backups.delete",
    "cloudsql.sslCerts.delete",
  ]
  project = var.project_id
}
