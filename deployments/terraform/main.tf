module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "aclipco-hello-world.fuchicorp.com"
  deployment_path        = "aclipco-hello-world"
    
  template_custom_vars = {
    deployment_image = "nginx"
  }
}
