variable "deployment_name" {
  default = "dhujaev5-hello-world"
}


variable "deployment_environment" {
    default = "dev"
  
}
variable "deployment_endpoint" {
  type = "map"
  default = {
      dev = "dev.dhujaev5-hello-world.fuchicorp.com"
      qa  = "qa.dhujaev5-hello-world.fuchicorp.com"
      prod = "dhujaev5-hello-world.fuchicorp.com"
  }
}

