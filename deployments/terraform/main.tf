module "helm_deploy" {
  source  = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "murat-hello-world.fuchicorp.com"
  deployment_path        = "murat-hello-world"
    
  template_custom_vars = {
    deployment_image = "nginx"
  }
}



