variable "deployment_name" {
  default = "tazagul-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}

variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.tazagul-hello-world.fuchicorp.com"
    qa = "qa.tazagul-hello-world.fuchicorp.com"
    prod = "tazagul-hello-world.fuchicorp.com"
  }
}
