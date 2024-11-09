resource "google_service_account" "terraform_backend2" {
  account_id   = "terraform-sa-backend2"
  display_name = "Terraform Service Account for Backend 2"
}

resource "google_service_account_key" "terraform_backend2_key" {
  service_account_id = google_service_account.terraform_backend2.name
}
