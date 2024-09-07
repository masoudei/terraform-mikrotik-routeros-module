resource "routeros_ip_address" "ip_address" {
  for_each = { for item in var.ip_addresses : item.address => item }

  address   = each.value.address
  interface = each.value.interface
  network   = each.value.network
  comment   = each.value.comment
}
