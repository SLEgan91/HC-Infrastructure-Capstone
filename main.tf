Provider  "google" {
  project = "HealthConnect-Project-0873"
  region  = "us-central1"
}

resource "google_storage_bucket" "test_bucket" {
  name          = "healthconnect-test-bucket-0873"
  location      = "US"
  force_destroy = true
}
