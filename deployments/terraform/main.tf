module "helm_deploy" {
  source  = "fuchicorp/chart/helm"

  # Helm chart name 
  deployment_name        = "${var.deployment_name}"

  # Namespace
  deployment_environment = "${var.deployment_environment}"

  # endpoint to access application 
  deployment_endpoint    = "tunji57-hello-world.fuchicorp.com"

  # location of the chart 
  deployment_path        = "tunji57-hello-world"

  template_custom_vars = {

    deployment_image = "nginx"
    db_host_name     = "example-db.fuchicorp.com"
    db_user_name     = "fuchicorp-example-user"
  }
}