output "default_egress_fw_self_link" {
  value = google_compute_firewall.default_ingress.self_link
}

output "default_ingress_fw_self_link" {
  value = google_compute_firewall.default_egress.self_link
}
