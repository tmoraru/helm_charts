variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}
variable "deployment_name" {
  default = "murat-hello-world"
}
variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.murat-hello-world.fuchicorp.com"
    qa = "qa.murat-hello-world.fuchicorp.com"
    prod = "prod.murat-hello-world.fuchicorp.com"
  }
}