variable "deployment_name" {
  default = "alisahp-hello-world"
}

variable "tiller_version" {
    default =
  
}

variable "deployment_endpoint" {
  type = "map"
  default = {
      dev = "dev.alisahp-hello-world.fuchicorp.com"
      qa = "qa.alisahp-hello-world.fuchicorp.com"
      prod = "prod.alisahp-hello-world.fuchicorp.com"
  }
}
