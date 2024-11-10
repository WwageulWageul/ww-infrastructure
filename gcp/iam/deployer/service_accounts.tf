resource "google_service_account" "dev_deployer" {
  account_id   = "${var.env}-deployer"
  display_name = "${var.env} environment deployer"
  project      = var.project_id
}

resource "google_service_account_key" "dev_deployer_key" {
  service_account_id = google_service_account.dev_deployer.id
  private_key_type   = "TYPE_GOOGLE_CREDENTIALS_FILE"
}

resource "local_file" "dev_deployer_key_file" {
  content  = google_service_account_key.dev_deployer_key.private_key
  filename = "${path.module}/keys/${google_service_account.dev_deployer.account_id}-key.json"
}

resource "google_project_iam_binding" "dev_deployer" {
  for_each = toset([
    local.roles.gcs_read,
    local.roles.sql_create,
    local.roles.sql_update,
    local.roles.sql_read,
    local.roles.sql_delete,
  ])

  role    = each.value
  project = var.project_id
  members = ["serviceAccount:${google_service_account.dev_deployer.email}"]
}
