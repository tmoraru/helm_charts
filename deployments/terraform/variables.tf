variable "deployment_name" {
  default = "aclipco-hello-world"
}
variable "deployment_environment" {
  default = "dev"
}
variable "deployment_endpoint" {
type = "map"
default = {
  dev = "dev.aclipco-hello-world.com"
  qa = "qa.aclipco-hello-world.com"
  prod = "prod.aclipco-hello-world.com"
}
}