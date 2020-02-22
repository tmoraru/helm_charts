variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" {
  default = "rootvovak-hello-world"
}

variable "deployment_environment" {
  default = "dev"
}

variable "deployment_endpoint" {
    type = "map"
    default = {
        dev = "dev.rootvovak-hello-world.fuchicorp.com"
        qa = "qa.rootvovak-hello-world.fuchicorp.com"
        prod = "rootvovak-hello-world.fuchicorp.com"
    }
}