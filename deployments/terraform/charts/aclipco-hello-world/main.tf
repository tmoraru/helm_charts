module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "aclipco-hello-word"
  deployment_environment = "tests"
  deployment_endpoint    = "aclipco-hello-world.fuchicorp.com"
  deployment_path        = "aclipco-hello-word"
}