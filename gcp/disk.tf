resource "google_compute_disk" "chat_app_disk" {
  name  = var.disk
  type  = "pd-ssd"
  zone  = var.zone
  labels = {
    app = "chat"
  }
  physical_block_size_bytes = 4096
}