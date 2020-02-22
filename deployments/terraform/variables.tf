variable "deployment_name" {
  default = "hakten-hello-world"
}

variable "deployment_environment" {
    default = "dev"
}

variable "deployment_endpoint" {
  type = "map"
  default = {
    dev  = "dev.hakten-hello-world.fuchicorp.com"
    qa   = "qa.hakten-hello-world.fuchicorp.com"
    prod = "prod.hakten-hello-world.fuchicorp.com"
  }
}
