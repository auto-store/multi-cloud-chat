variable "region" {
    type = string
    default = "eu-west-2"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "keypair" {
    type = string
    default = "tom-keypair"
}

variable "instance_name" {
    type = string
    default = "chat-app"
}


