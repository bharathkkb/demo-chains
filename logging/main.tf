variable "project_id" {

}

resource "google_storage_bucket" "logs" {
  project       = var.project_id
  name          = "${var.project_id}-logs"
  force_destroy = true
  location      = "US"
}

output "logging_bucket_id" {
  value = google_storage_bucket.logs.id
}