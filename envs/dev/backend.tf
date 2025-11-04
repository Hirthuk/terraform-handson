# Backedn remote state configuration using Google bucket

terraform {
  backend "gcs" {
    bucket = "tf-state-terraform-project-477014-1762096205"
    prefix = "envs/dev"
  }
}