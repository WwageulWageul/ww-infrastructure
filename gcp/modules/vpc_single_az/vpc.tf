resource "google_compute_network" "default" {
  name        = "${local.name_prefix}-vpc"
  description = "The VPC for the project"

  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public" {
  name          = "${local.name_prefix}-subnet-public"
  description   = "The public subnet for the project"
  network       = google_compute_network.default.self_link
  ip_cidr_range = var.subnet_cidr_range
}
