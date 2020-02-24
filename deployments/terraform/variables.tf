variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "mahsuda-hello-world"
}

variable "deployment_environment" {
  default = "prod"
}


variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.mahsuda-hello-world.fuchicorp.com"
    qa = "qa.mahsuda-hello-world.fuchicorp.com"
    prod = "mahsuda-hello-world.fuchicorp.com"
  }
}
