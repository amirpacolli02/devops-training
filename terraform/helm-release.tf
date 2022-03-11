resource "helm_release" "web-app" {
  name  = "web-app"
  chart = "../helm/web-app"

  namespace = var.user

  values = [
    "${templatefile("../helm/web-app/values.yaml", {
      api_subdomain = "web.${var.user}.appstellar.training",
      ssl_arn = "${aws_acm_certificate.cert.arn}"
    })}"
  ]
}