locals {
  project = var.gcs_project
}

resource "google_compute_instance" "vm" {
  name = var.vm_name
  project = var.gcs_project
  zone = var.gcs_zone
  machine_type = var.vm_machine_type

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-12"
      size = 10
      type = "pd-balanced"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # empty block => allocate ephemeral external IP
    }
  }

  metadata = {
     ssh-keys = "terraform:${file("~/.ssh/id_rsa.pub")}"
  }

  tags = [ "web", "terraform-demo" ]
}