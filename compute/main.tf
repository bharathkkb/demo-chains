variable "project_id" {

}

variable "vpc_id" {

}

variable "subnet_id" {

}

resource "google_compute_instance" "gce" {
  name                      = "test-instance"
  project                   = var.project_id
  tags                      = ["allow-ssh"]
  zone                      = "us-central1-a"
  machine_type              = "e2-small"
  allow_stopping_for_update = true
  network_interface {
    network    = var.vpc_id
    subnetwork = var.subnet_id
  }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
}