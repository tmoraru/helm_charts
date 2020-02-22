variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "fsadykov-hello-world"
}

variable "deployment_environment" {
  default = "prod"
}


variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.fsadykov-hello-world.fuchicorp.com"
    qa = "qa.fsadykov-hello-world.fuchicorp.com"
    prod = "fsadykov-hello-world.fuchicorp.com"
  }
}
