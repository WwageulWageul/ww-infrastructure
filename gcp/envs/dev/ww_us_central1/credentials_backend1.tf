resource "google_service_account" "terraform_backend1" {
  account_id   = "terraform-sa-backend1"
  display_name = "Terraform Service Account for Backend 1"
}

resource "google_service_account_key" "terraform_backend1_key" {
  service_account_id = google_service_account.terraform_backend1.name
}
