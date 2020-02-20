module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "aidinkobonov-hello-world"
  deployment_environment = "test"
  deployment_endpoint    = "aidinkobonov-hello-world.fuchicorp.com"
  deployment_path        = "aidinkobonov-hello-world"
  template_custom_vars = {
      deployment_image = "nginx"
  }
}