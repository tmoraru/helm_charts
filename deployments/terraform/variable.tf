variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "mkarimi20-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
    type = "map"
    default = {
        dev = "dev.mkarimi20-hello-world.fuchicorp.com"
        qa = "qa.mkarimi20-hello-world.fuchicorp.com"
        prod = "mkarimi20-hello-world.fuchicorp.com"
    }
  
}
