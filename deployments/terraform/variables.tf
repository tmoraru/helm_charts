variable "deployment_name" { #reference 
    default = "csamatov96-hello-world"
}

variable "deployment_environment" {
    default = "qa" #will be defined within Jenkins 
}

variable "deployment_endpoint" {
    
    type = "map"

    default = {
        dev = "dev.csamatov96-hello-world.fuchicorp.com"
        qa = "qa.csamatov96-hello-world.fuchicorp.com"
        prod = "csamatov96-hello-world.fuchicorp.com"
    }
}

