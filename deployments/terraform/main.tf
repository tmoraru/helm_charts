module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "azizasalieva95-hello-world"
  deployment_environment = "dev"
  deployment_endpoint    = "azizasalieva95-hello-world.fuchicorp.com"
  deployment_path        = "azizasalieva95-hello-world"
}