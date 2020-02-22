variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "azizasalieva95-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}

variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.azizasalieva95-hello-world.fuchicorp.com"
    qa = "qa.azizasalieva95-hello-world.fuchicorp.com"
    prod = "azizasalieva95-hello-world.fuchicorp.com"
  }
}