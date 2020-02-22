module "helm_deploy" {
  source                 = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "anara2303-hello-world.fuchicorp.com"
  deployment_path        = "anara2303-hello-world"

  template_custom_vars = {
    deployment_image = "nginx"
 } 
}