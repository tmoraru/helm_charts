module "helm_deploy" {
  #source                 = "git::https://github.com/fuchicorp/helm-deploy.git"
  source                 = "fuchicorp/chart/helm"
  deployment_name        = "${var.deployment_name}"
  deployment_environment = "${var.deployment_environment}"
  deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
  deployment_path        = "bkarakas-hello-world"

   template_custom_vars = {
    deployment_image = "nginx"
  }
}