module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "rootvovak-hello-world"
  deployment_environment = "test"
  deployment_endpoint    = "rootvovak-hello-world.fuchicorp.com"
  deployment_path        = "rootvovak-hello-world"

 
}