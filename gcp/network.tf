resource "google_compute_firewall" "default" {
  name    = "chat-app"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-5000"]
  }

  source_tags = ["chat-app"]
}
