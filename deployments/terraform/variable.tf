variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}
variable "deployment_name" {
  default = "seedoffd-hello-world"
}
variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.fsadykov-hello-world.fuchicorp.com"
    qa = "qa.fsadykov-hello-world.fuchicorp.com"
    prod = "fsadykov-hello-world.fuchicorp.com"
  }
}