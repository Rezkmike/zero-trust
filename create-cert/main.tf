terraform {
  required_version = "> 0.8.0"
}

resource "null_resource" "create_certificate" {

 provisioner "local-exec" {

    command = "/bin/bash ../gen-cert"
  }
}
