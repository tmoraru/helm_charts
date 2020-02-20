module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "aclipco-hello-word"
  deployment_environment = "test"
  deployment_endpoint    = "aclipco-hello-world.fuchicorp.com"
  deployment_path        = "aclipco-hello-world"
    
  template_custom_vars = {
    deployment_image = "nginx"
  }
}
