module "helm_deploy" {

  //source                 = "git::https://github.com/fuchicorp/helm-deploy.git" #

  source  = "fuchicorp/chart/helm" #???

  deployment_name        = "${var.deployment_name}" #"csamatov96-hello-world"  
  
  deployment_environment = "${var.deployment_environment}" #dev, qa, prod

  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}" #look for it and set it  

  deployment_path        = "csamatov96-hello-world" #path for helm chart on local 
  #
  template_custom_vars = {

    deployment_image = "nginx" #that value will be parsed to values.yaml file 
   }
}
