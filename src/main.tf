data "azurerm_resource_group" "current" {
    name = "rg-primaryvnet-1"
}


resource "azurerm_virtual_network" "primary-vnet" {
  name = "primaryvnet-1"
  location = data.azurerm_resource_group.current.location
  resource_group_name = data.azurerm_resource_group.current.name
  address_space = ["10.0.0.0/20"]
}

resource "azurerm_subnet" "subnet-infra" {
    name = "subnet-infra"
    resource_group_name = data.azurerm_resource_group.current.name
    virtual_network_name = azurerm_virtual_network.primary-vnet.name
    address_prefixes = ["10.0.0.0/22"]
}

resource "azurerm_subnet" "subnet-app-1" {
    name = "subnet-app-1"
    resource_group_name = data.azurerm_resource_group.current.name
    virtual_network_name = azurerm_virtual_network.primary-vnet.name
    address_prefixes = ["10.0.4.0/22"]
}

resource "azurerm_subnet" "subnet-app-2" {
    name = "subnet-app-2"
    resource_group_name = data.azurerm_resource_group.current.name
    virtual_network_name = azurerm_virtual_network.primary-vnet.name
    address_prefixes = ["10.0.8.0/22"]
}