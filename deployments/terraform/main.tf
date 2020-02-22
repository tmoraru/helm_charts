module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "nurzhan-hello-world"
  deployment_environment = "test"
  deployment_endpoint    = "nurzhan-hello-world.fuchicorp.com"
  deployment_path        = "nurzhan-hello-world"



  template_custom_vars = {
    deployment_image = "nginx"
    db_host_name     = "example-db.fuchicorp.com"
    db_user_name     = "fuchicorp-example-user"
  }
}



