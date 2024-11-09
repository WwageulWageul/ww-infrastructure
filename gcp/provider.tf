terraform {
  required_version = "~>1.9"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>6.1"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.gcp_region
}
