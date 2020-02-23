variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "enver0173-hello-world"
}

variable "deployment_environment" {
  default = "prod"
}


variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.enver0173-hello-world.fuchicorp.com"
    qa = "qa.enver0173-hello-world.fuchicorp.com"
    prod = "enver0173-hello-world.fuchicorp.com"
  }
}