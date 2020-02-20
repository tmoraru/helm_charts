module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "enver0173-hello-world"
  deployment_environment = "test"
  deployment_endpoint    = "enver0173-hello-world.fuchicorp.com"
  deployment_path        = "enver0173-hello-world"
}
