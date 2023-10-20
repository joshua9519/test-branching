resource "google_storage_bucket" "default" {
    location = "us-central1"
    name = var.value
}

data "google_client_openid_userinfo" "me" {
}
