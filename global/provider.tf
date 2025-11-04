# global Terraform and GCP configuration
terraform {
  required_version = ">= 1.3.0"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

variable "gcp_project" {
  description = "Google cloud Project Name"
  type = string
}

variable "gcp_region" {
  description = "Google cloud region"
  default = "us-central1"
}

provider "google" {
  project = var.gcp_project
  region = var.gcp_region
}
