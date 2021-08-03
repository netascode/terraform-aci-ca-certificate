resource "aci_rest" "pkiTP" {
  dn         = "uni/userext/pkiext/tp-${var.name}"
  class_name = "pkiTP"
  content = {
    name      = var.name
    descr     = var.description
    certChain = var.certificate_chain
  }

  lifecycle {
    ignore_changes = [content["certChain"]]
  }
}
