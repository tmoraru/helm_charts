module "helm_deploy" {
  #source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  source                 = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "bkarakas-hello-world.fuchicorp.com"
  deployment_path        = "bkarakas-hello-world"

   template_custom_vars = {
    deployment_image = "nginx"
    db_host_name = "bkarakas-db.fuchicorp.com"
    db_user_name = "fuchicorp-bkarakas-user"
  }
}