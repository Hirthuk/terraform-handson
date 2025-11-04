# Declaration of Variable. Variable value assignation can be done with tfvars file or CLI

variable "gcs_project" {
  description = "gcs_project"
  type = string
}

variable "gcs_region" {
  description = "Google cloud region"
  default = "us-central1"
}

variable "gcs_zone" {
  description = "Google cloud Zone"
   default     = "us-central1-a"
}

variable "vm_name" {
  description = "name of the Virtual machine"
  type = string
  default = "demo-vm"
}

variable "vm_machine_type" {
  description = "Set the Machine type of the VM"
  default = "ec2-micro"
  type = string
}