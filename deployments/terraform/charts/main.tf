module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "example-deployment"
  deployment_environment = "test"
  deployment_endpoint    = "anara2303-hello-world.fuchicorp.com"
  deployment_path        = "anara2303-hello-world"

  template_custom_vars = {
    deployment_image = "nginx"
 } 
}