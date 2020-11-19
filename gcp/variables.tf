variable "project" {
    type = string
    default = "tharris-demo-env"
}

variable "region" {
    type = string
    default = "europe-west2"
}

variable "zone" {
    type = string
    default = "europe-west2-a"
}

variable "instance_name" {
    type = string
    default = "chat-app"
}

variable "machine_type" {
    type = string
    default = "n1-standard-1"
}

variable "disk" {
    type = string
    default = "app-data"
}

