variable "deployment_name" {
  default = "enver0173-hello-world"
}

variable "deployment_environment" {
    default = "dev"
}

variable "deployment_endpoint" {
  type = "map"
  default = {
    dev  = "dev.enver0173-hello-world.fuchicorp.com"
    qa   = "qa.enver0173-hello-world.fuchicorp.com"
    prod = "prod.enver0173-hello-world.fuchicorp.com"
  }
}