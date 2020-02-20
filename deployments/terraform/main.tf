module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  deployment_name        = "ktalant-hello-world"
  deployment_environment = "test"
  deployment_endpoint    = "ktalant-hello-world.fuchicorp.com"
  deployment_path        = "ktalant-hello-world"

  template_custom_vars = {
    deployment_image = "nginx"
    db_host_name = "example.db.fuchicorp"
  }
}

