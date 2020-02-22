variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}
variable "deployment_name" {
  default = "Ulan-devops-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
  type = "map"
  default = {
    dev = "dev.Ulan-devops-hello-world.fuchicorp.com"
    qa = "qa.Ulan-devops-hello-world.fuchicorp.com"
    prod = "prod.Ulan-devops-hello-world.fuchicorp.com"
  }
}
