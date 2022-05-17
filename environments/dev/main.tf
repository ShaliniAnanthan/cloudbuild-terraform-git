locals {
  env = "vpc-dev"
}

provider "google-beta" {
  project = "${var.project}"
  credentials = file("gcpcloudbuild.json")
}
provider "google" {
  project = "${var.project}"
  credentials = file("gcpcloudbuild.json")
}

module "vpc" {
  source  = "../../modules/vpc"
  project = "${var.project}"
  env     = "${local.env}"
}

# module "gke" {
#   source  = "../../modules/gke"
#   project = "${var.project}"
#   subnet  = "${module.vpc.subnet}"
#   network = "${module.vpc.network}"
#   gke_region = "${var.gke_region}"
#   gke_machine_type = "${var.gke_machine_type}"
# }
