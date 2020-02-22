variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}
variable "deployment_name" {
  default = "murod-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}
