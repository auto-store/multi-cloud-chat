provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
}

data "google_compute_instance" "chat_app" {
  name = var.instance_name
}


resource "google_compute_instance" "chat_app" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = ["chat-app", "http-server", "tag"]

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20201116"
    }
  }

  attached_disk {
      source =  google_compute_disk.chat_app_disk.id
  }


  network_interface {
    network = "default"

    access_config {}
  }

  metadata = {
    app = "chat"
  }

  metadata_startup_script = "${file("${path.module}/scripts/startup.sh")}"
 
}
