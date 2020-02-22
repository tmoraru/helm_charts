variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "alisahp-hello-world"
}

variable "deployment_environment" {
  default = "prod"
}


variable "deployment_endpoint" {
  type = "map"
  default  = {
    dealisahp
    qa = "qa.alisahp-hello-world.fuchicorp.com"
    prod = "alisahp-hello-world.fuchicorp.com"
  }
}
