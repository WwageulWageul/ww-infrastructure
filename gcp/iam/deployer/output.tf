output "dev_deployer" {
  value = google_service_account.dev_deployer
}

output "vpc_roles" {
  value = [
    google_project_iam_custom_role.vpc_create,
    google_project_iam_custom_role.vpc_read,
    google_project_iam_custom_role.vpc_update,
    google_project_iam_custom_role.vpc_delete,
  ]
}
