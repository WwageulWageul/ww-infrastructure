resource "google_sql_database_instance" "db" {
  name             = "${var.name_prefix}-db"
  database_version = "MYSQL_8_0"
  region           = var.region
  deletion_protection = false

  settings {
    tier              = var.db_tier
    availability_type = "ZONAL"

    disk_type                   = var.db_disk_type
    disk_size                   = 10
    deletion_protection_enabled = false

    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        name  = "allow-all"
        value = "0.0.0.0/0"
      }
    }

    backup_configuration {
      enabled = false
    }
  }

  # lifecycle {
  #   create_before_destroy = true
  # }

}

resource "google_sql_user" "default" {
  name     = var.db_username
  password = var.db_password
  instance = google_sql_database_instance.db.name
}

resource "google_sql_database" "default" {
  name     = var.db_name
  instance = google_sql_database_instance.db.name
}

