variable "deployment_name" {
  default = "nurzhan-hello-world"
}

variable "deployment_environment" {
    default = "dev"
}

variable "deployment_endpoint" {
    type = "map"
    default ={
      dev = "dev.nurzhan-hello-world.fuchicorp.com"
      qa = "qa.nurzhan-hello-world.fuchicorp.com"
      prod = "prod.nurzhan-hello-world.fuchicorp.com"
    }
}