resource "routeros_interface_vlan" "interface_vlan" {
  for_each = { for item in var.interface_vlans : item.name => item }

  interface = each.value.interface
  name      = "vlan-${each.value.vlan_id}-${each.value.vlan_id}"
  vlan_id   = each.value.vlan_id
}
