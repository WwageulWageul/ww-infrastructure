# resource "google_service_account" "deployer" {
#   project      = var.project_id
#   account_id   = ""
#   display_name = "Cloud SQL Deployer"
#   description  = "Service account for deploying Cloud SQL"
# }

# resource "google_project_iam_binding" "cloudsql_deployer" {
#   project = var.project_id
#   role    = "roles/cloudsql.admin"

#   members = [
#     "serviceAccount:${google_service_account.cloudsql_deployer.email}",
#   ]
# }
