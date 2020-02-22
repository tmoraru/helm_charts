module "helm_deploy" {
  # source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  # source = "/Users/mkarimi20/Projects/fuchicorp-projects/terraform-helm-chart"
  source  = "fuchicorp/chart/helm"

  # Helm chart name 
  deployment_name        = "${var.deployment_name}"

  # Namespace
  deployment_environment = "test"

  # endpoint to access application 
  deployment_endpoint    = "mkarimi20-hello-world.fuchicorp.com"

  # location of the chart 
  deployment_path        = "mkarimi20-hello-world"

  template_custom_vars = {

    deployment_image = "nginx"

  }
}