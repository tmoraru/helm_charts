module "helm_deploy" {
  # source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  source  = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "ktalant-hello-world.fuchicorp.com"
  deployment_path        = "ktalant-hello-world"

  template_custom_vars = {
    deployment_image = "nginx"
    db_host = "talantdb.talantzon.com"
    db_user = "dbuser1"
  }
}

