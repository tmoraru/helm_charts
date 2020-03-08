variable "deployment_name" {
  default = "hakten-hello-world"
}

variable "deployment_environment" {
    default = "qa"
}

variable "deployment_image" {
  default = "nginx"
}


variable "deployment_endpoint" {
  type = "map"
  default = {
    dev  = "dev.tazagul.net"
    qa   = "qa.tazagul.net"
    prod = "prod.tazagul.net"
  }
}
