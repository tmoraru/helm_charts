module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"

  # Helm chart name 
  deployment_name        = "${var.deployment_name}"

  # Namespace
  deployment_environment = "test"

  # endpoint to access application 
  deployment_endpoint    = "tazagul-hello-world.fuchicorp.com"

  # location of the chart 
  deployment_path        = "tazagul-hello-world"

  template_custom_vars = {

    deployment_image = "nginx"
  }
}