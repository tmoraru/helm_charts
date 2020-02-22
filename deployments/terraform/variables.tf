variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}
variable "deployment_name" {
  default = "ulan-devops-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
  type = "map"
  default = {
    dev = "dev.ulan-devops-hello-world.fuchicorp.com"
    qa  = "qa.ulan-devops-hello-world.fuchicorp.com"
    prod = "prod.ulan-devops-hello-world.fuchicorp.com"
  }
}
