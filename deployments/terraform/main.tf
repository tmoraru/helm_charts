module "helm_deploy" {
  source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  # Helm chart name
  deployment_name        = "Ulan-devops-hello-world"
  # Namespace
  deployment_environment = "test"
  # endpoint to access application
  deployment_endpoint    = "${var.deployment_name}"
  # location of the chart
  deployment_path        = "Ulan-devops-hello-world"
  template_custom_vars = {
    deployment_image = "nginx"
    db_host_name     = "example-db.fuchicorp.com"
    db_user_name     = "fuchicorp-example-user"