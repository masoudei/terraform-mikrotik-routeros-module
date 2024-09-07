variable "MIKROTIK_URL" {
  type = string
}

variable "MIKROTIK_USER" {
  type = string
}

variable "MIKROTIK_PASS" {
  type = string
}


variable "interface_vlans" {
  type = list(object({
    interface = string
    name      = string
    vlan_id   = number
  }))
}

variable "ip_addresses" {
  type = list(object({
    address   = string
    interface = string
    network   = string
    comment   = string
  }))
  description = "List of IP Adresses to manage in Mikrotik"
}
