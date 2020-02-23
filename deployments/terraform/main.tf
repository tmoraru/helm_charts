module "helm_deploy" {
  # source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  # source = "/Users/enver0173/Projects/fuchicorp-projects/terraform-helm-chart"
  source  = "fuchicorp/chart/helm"

  # Helm chart name 
  deployment_name        = "${var.deployment_name}"

  # Namespace
  deployment_environment = "${var.deployment_environment}"

  # endpoint to access application 
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"

  # location of the chart 
  deployment_path        = "enver0173-hello-world"

  template_custom_vars = {

    deployment_image = "nginx"
  }
}
