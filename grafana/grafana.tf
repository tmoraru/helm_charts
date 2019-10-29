data "template_file" "grafana_helm_chart_values" {
  template = "${file("templates/grafana/values_template.yaml")}"

  vars {
    env_domain = "${lower(var.environment)}.${data.terraform_remote_state.base_kops_config.base_domain}"
    sso_enabled = "${var.sso_enabled}"
    sso_client_id = "${trimspace(base64decode(var.sso_client_id))}"
    sso_client_secret = "${trimspace(base64decode(var.sso_client_secret))}"
    sso_auth_url = "${var.sso_auth_url}"
    sso_token_url = "${var.sso_token_url}"
    sso_api_url = "${var.sso_api_url}"
    server_url = "https://grafana.${lower(var.environment)}.${data.terraform_remote_state.base_kops_config.base_domain}"
  }
}

data "archive_file" "grafana_template_files" {
  type        = "zip"
  source_dir  = "${path.module}/templates/grafana/"
  output_path = "${path.module}/.cache/grafana_templates.zip"
}

resource "local_file" "grafana_value_yaml" {
  content  = "${trimspace(data.template_file.grafana_helm_chart_values.rendered)}"
  filename = "${path.module}/.cache/grafana_values.yaml"
}

resource "null_resource" "grafana" {
  depends_on = ["null_resource.get_kube_config", "null_resource.tiller", "local_file.grafana_value_yaml"]

  triggers {
    values    = "${md5(data.template_file.grafana_helm_chart_values.rendered)}"
    templates = "${data.archive_file.grafana_template_files.output_md5}"
  }

  provisioner "local-exec" {
    command = <<EOF
# Need to have a secret created for chart to get deployed. Secret contents can later be updated and pod recreated.
kubectl create namespace grafana|| echo "^ Error expected if resource is being updated ^";
kubectl apply -f "${path.module}/templates/grafana/dashboards/resource-limit-dashboards.yaml";
kubectl -n grafana create secret generic grafana-smtp --from-literal="user=placholder" --from-literal="password=placeholder"||echo "^ Error expected if resource is being updated ^";
helm upgrade --install --tiller-namespace tiller-full --force --namespace grafana \
--kube-context=${lower(var.environment)}.${data.terraform_remote_state.base_kops_config.base_domain} \
--values "${path.module}/.cache/grafana_values.yaml" \
grafana stable/grafana
EOF
  }
}

resource "null_resource" "grafana_destroy" {
  depends_on = ["null_resource.get_kube_config"]

  provisioner "local-exec" {
    when = "destroy"

    command = <<EOF
      echo 'helm delete --purge grafana --kube-context=${lower(var.environment)}.${data.terraform_remote_state.base_kops_config.base_domain} --tiller-namespace tiller-full'
      true
    EOF
  }
}
