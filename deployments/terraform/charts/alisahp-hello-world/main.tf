module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  source  = "fuchicorp/chart/helm"

  # Helm chart name 
  deployment_name        = "alisahp-hello-world"

  # Namespace
  deployment_environment = "test"

  # endpoint to access application 
  deployment_endpoint    = "alisahp-hello-world.fuchicorp.com"

  # location of the chart 
  deployment_path        = "alisahp-hello-world"

  template_custom_vars = {

