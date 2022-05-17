terraform {
  backend "gcs" {
      bucket = "studied-groove-tfstate"
      prefix = "gke/dev"
      credentials = "gcpcloudbuild.json"
  }
}