
# Mikrotik RouterOS Terraform Module

This repository contains a custom Terraform module designed to automate the configuration of Mikrotik RouterOS. This module provides reusable configurations that can be applied across multiple environments.

## Features

- **Interface VLAN Configuration**: Configure VLAN interfaces with customizable parameters.
- **IP Address Configuration**: Assign IP addresses to interfaces dynamically.
- **Provider Configuration**: Set up the Mikrotik RouterOS provider for integration with your infrastructure.
- **Variables Support**: Customize the module behavior using input variables for flexible configurations.

## Prerequisites

Before using this module, ensure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) 0.12+ installed.
- Access to a Mikrotik RouterOS instance with Rest API access enabled.<br />
    ( i.e. : <http://10.1.10.1/rest> )
- Proper permissions on your Mikrotik RouterOS instance.

## Usage

```hcl
module "mikrotik_routeros" {
  source = "<path-to-your-module>"

  # Define your input variables here
  vlans        = var.vlans
  ip_addresses = var.ip_addresses
}

```

### Example Input Variables

```hcl
variable "vlans" {
  description = "Array of VLAN configurations"
  type = list(object({
    id          = number
    interface   = string
    name        = string
    use_service_tag = bool
  }))
}

variable "ip_addresses" {
  description = "Array of IP addresses to assign to interfaces"
  type = list(object({
    address   = string
    interface = string
    network   = string
  }))
}
```

### Providers

Make sure you configure the Mikrotik provider properly in your `provider.tf` file:

```hcl
provider "mikrotik" {
  address  = var.router_address
  username = var.username
  password = var.password
}
```

### Example Provider Configuration (provider.tf)

```hcl
provider "mikrotik" {
  address  = "192.168.88.1"  # Replace with your router's IP address
  username = "admin"          # Replace with your Mikrotik username
  password = "changeme"       # Replace with your Mikrotik password
}
```

### Outputs

- No outputs defined yet. (You can add outputs as needed in your project.)

## Authors

This module is maintained by [Masoud Ehteshami](https://github.com/masoudei).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
