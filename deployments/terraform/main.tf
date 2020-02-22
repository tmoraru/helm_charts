module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
# Helm chart name 
  deployment_name        = "${var.deployment_name}"
# Namespace
  deployment_environment = "${var.deployment_environment}"
 # endpoint to access application 
  deployment_endpoint    = "murod-hello-world.fuchicorp.com"
  # location of the chart
  deployment_path        = "murod-hello-world"
  
  template_custom_vars = {

    deployment_image = "nginx"
    #db_host_name     = "example-db.fuchicorp.com"
   # db_user_name     = "fuchicorp-example-user"
  }
}