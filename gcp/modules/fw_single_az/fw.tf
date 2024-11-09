resource "google_compute_firewall" "default_ingress" {
  network   = var.network_self_link
  name      = "${var.name_prefix}-fw-default-ingress"
  direction = "INGRESS"

  allow {
    ports    = [3306]
    protocol = "tcp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "default_egress" {
  network   = var.network_self_link
  name      = "${var.name_prefix}-fw-default-egress"
  direction = "EGRESS"

  allow {
    ports    = [0]
    protocol = "all"
  }

  destination_ranges = ["0.0.0.0/0"]
}
