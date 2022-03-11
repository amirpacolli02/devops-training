resource "aws_route53_record" "api_dns_record" {
  zone_id = "Z08236011XTT4SGTHOP2L"
  name    = "web.amir-pacolli"
  type    = "CNAME"
  ttl     = "300"
  records = ["k8s-appstellartrainin-45c998decc-34107596.eu-central-1.elb.amazonaws.com"]

}