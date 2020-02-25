module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "test"
  deployment_endpoint    = "natan1988-hello-world.fuchicorpcom"
  deployment_path        = "natan1988-hello-world"

  template_custom_vars = {
   deployment_image = "nginx"
   db_host_name     = "example-db.fuchicorp.com"
   db_user_name     = "fuchicorp-example-user"
  }
} 