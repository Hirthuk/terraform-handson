output "instance_name" {
  description = "The name of the Created VM"
  value = google_compute_instance.vm.name
}

output "instance_zone" {
  description = "Zone of the created VM"
  value = google_compute_instance.vm.zone
}

output "instance External IP" {
  description = "External IP assigned to the VM"
  value = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}