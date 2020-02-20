module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"

  deployment_name        = "fsadykov-hello-world"
  deployment_environment = "test"
  deployment_endpoint    = "fsadykov-hello-world.fuchicorp.com"
  deployment_path        = "fsadykov-hello-world"
}
