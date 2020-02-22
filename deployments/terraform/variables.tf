variable "deployment_name"{
    default = "bkarakas-hello-world"
}

variable "deployment_environment"{
    default = "dev"
}

variable ""deployment_endpoint{
    type = "map"

    default  = {
        dev  = "dev.bkarakas-hello-world.fuchicorp.com"
        qa   = "qa.bkarakas-hello-world.fuchicorp.com"
        prod = "prod.bkarakas-hello-world.fuchicorp.com"
    }
}