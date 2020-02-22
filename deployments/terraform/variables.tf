variable "deployment_name" {
  default = "tunji57-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}

variable "deployment_endpoint" {
  type = "map"

  default = {
    dev = "dev.tunji57-hello-world.fuchicorp.com"
    qa = "qa.tunji57-hello-world.fuchicorp.com"
    prod = "prod.tunji57-hello-world.fuchicorp.com"
  } 
}
