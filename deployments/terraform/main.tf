module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
 
 # helm chart name
  deployment_name        = "dhujaev5-hello-world"
  
  #  namespace
  deployment_environment = "test"
  
  # endpoint to access application
  deployment_endpoint    = "dhujaev5-hello-world.fuchicorp.com"
  
  # location of the chart
  deployment_path        = "dhujaev5-hello-world"

  template_custom_vars = {
      deployment_image = "nginx"
      }
}