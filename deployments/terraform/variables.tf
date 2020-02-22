variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}
variable "deployment_name" {
  default = "sera-ab-hello-world"
}
variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
  type = "map"
  default  = {
    dev = "dev.sera-ab-hello-world.fuchicorp.com"
    qa = "qa.sera-ab-hello-world.fuchicorp.com"
    prod = "sera-ab-hello-world.fuchicorp.com"
  }
}