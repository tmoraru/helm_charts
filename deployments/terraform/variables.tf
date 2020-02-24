variable "tiller_version" {
  default     = "v2.11.0"
  description = "Please provide version of the tiller."
}

variable "deployment_name" { #reference to module's parameter  
    default = "aidinkobonov-hello-world"
}

variable "deployment_environment" { #the actual values will be defined within Jenkins groovy file
    default = "dev" #reference to module's parameter  
}

variable "deployment_endpoint" {
    
    type = "map" #???

    default = { #the following values will be parsed to module's parameter  
        
        dev = "dev.aidinkobonov-hello-world.fuchicorp.com"
        qa = "qa.aidinkobonov-hello-world.fuchicorp.com"
        prod = "aidinkobonov-hello-world.fuchicorp.com"
    }
}