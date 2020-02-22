module "helm_deploy" {
  source                 = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "nurzhan-hello-world.fuchicorp.com"
  deployment_path        = "nurzhan-hello-world"



  template_custom_vars = {
    deployment_image = "nginx"
    db_host_name     = "example-db.fuchicorp.com"
    db_user_name     = "fuchicorp-example-user"
  }
}



