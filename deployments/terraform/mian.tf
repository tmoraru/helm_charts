module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
 
 
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "test"
  deployment_endpoint    = "mkarimi20-hello-world.fuchicorp.com"
  deployment_path        = "mkarimi20-hello-world"

  



  template_custom_vars = {
    deployment_image = "nginx"
    db_host_name     = "example-db.fuchicorp.com"
    db_user_name     = "fuchicorp-example-user"
  }
}
