resource "google_storage_bucket" "default" {
    location = "us-central1"
    name = var.value
}