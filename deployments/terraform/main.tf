module "helm_deploy" {
  # source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  # source = "/Users/fsadykov/Projects/fuchicorp-projects/terraform-helm-chart"
  source  = "fuchicorp/chart/helm"

  # Helm chart name 
  deployment_name        = "azizasalieva95-hello-world"

  # Namespace
  deployment_environment = "test"

  # endpoint to access application 
  deployment_endpoint    = "azizasalieva95-hello-world.fuchicorp.com"

  # location of the chart 
  deployment_path        = "azizasalieva95-hello-world"

  template_custom_vars = {

    deployment_image = "nginx"
    db_host_name     = "example-db.fuchicorp.com"
    db_user_name     = "fuchicorp-example-user"
  }
}