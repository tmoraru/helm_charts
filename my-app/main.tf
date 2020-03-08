# module "helm_deploy" {
#   source                 = "fuchicorp/chart/helm"
 
#   deployment_name        = "${var.deployment_name}"
#   deployment_path        = "hakten-hello-world"
#   deployment_environment = "${var.deployment_environment}"
#   deployment_endpoint    = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"

#   template_custom_vars = {
#     deployment_image = "nginx"
#   }
# }




## Deploy ingress controller
resource "helm_release" "hakten-hello-world" {

  name        = "${var.deployment_name}"
  chart       = "./charts/hakten-hello-world"
  namespace   = "${var.deployment_environment}"

  values = [
    "${data.template_file.hakten-hello-world-template-file.rendered}"
  ]
}


data "template_file" "hakten-hello-world-template-file" {
  template = "${file("charts/hakten-hello-world/values.yaml")}"

  vars {
    deployment_endpoint = "${lookup(var.deployment_endpoint, "${var.deployment_environment}")}"
    deployment_image    = "${var.deployment_image}"
  }
}

# this is not really needed, it creates template file in bastion.
resource "local_file" "hakten_helm_chart_values" {
  content  = "${trimspace(data.template_file.hakten-hello-world-template-file.rendered)}"
  filename = "charts/.cache/hakten-hello-world-template-file.yaml"
}

