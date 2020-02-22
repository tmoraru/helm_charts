variable "deployment_name" {
    default = "ktalant-hello-world"
}
variable "deployment_environment" {
    default = "dev"
}

variable "deployment_endpoint" {
  type = "map"
  default = {
      dev = "dev.ktalant-hello-world.fuchicorp.com"
      qa = "qa.ktalant-hello-world.fuchicorp.com"
      prod = "ktalant-hello-world.fuchicorp.com"
  }
}
