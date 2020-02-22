module "helm_deploy" {
 # source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
   source  = "fuchicorp/chart/helm"
  # Helm chart name
  deployment_name        = ${var.deployment_name}
  # Namespace
  deployment_environment = "${var.deployment_environment}"
  # endpoint to access application
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  # location of the chart
  deployment_path        = "Ulan-devops-hello-world"
  template_custom_vars = {
    deployment_image = "nginx"
  }
}