resource "google_storage_bucket" "default" {
  location = "us-east1"
  name     = var.name
  project  = var.project
}

resource "google_storage_bucket_iam_member" "name" {
  bucket = google_storage_bucket.default.name
  member = data.google_client_openid_userinfo.me.email
  role   = "roles/storage.admin"
}

data "google_client_openid_userinfo" "me" {
}
