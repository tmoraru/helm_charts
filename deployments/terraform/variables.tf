variable "deployment_name" {
  default = "anara-hello-world"
}

variable "deployment_environment" {
    default = "dev"
}
variable "deployment_endpoint" {
    type = "map"
    default = {
        dev = "dev.anara2303-hello-world.fuchicorp.com"
        qa = "qa.anara2303-hello-world.fuchicorp.com"
        prod = "prod.anara2303-hello-world.fuchicorp.com"
        }
  
}
