module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "alisahp-deployment"
  deployment_environment = "dev"
  deployment_endpoint    = "alisahp.fuchicorp.com"
  deployment_path        = "alisahp"
}