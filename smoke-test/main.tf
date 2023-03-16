terraform {
  backend "http" {}
}

resource "null_resource" "example1" {
  count = var.smoke_test_count

  provisioner "local-exec" {
    command = "sleep ${count.index}; echo ...smoke-test ${count.index} succeeded!;"
  }
}
