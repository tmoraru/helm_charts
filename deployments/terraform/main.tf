module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "mahsuda-hello-world"
  deployment_environment = "dev"
  deployment_endpoint    = "mahsuda-hello-world.fuchicorp.com"
  deployment_path        = "mahsuda-hello-world"
}