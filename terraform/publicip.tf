resource "azurerm_public_ip" "pub_ip" {
    name                = "ip_pub_2"
    location            = var.location
    resource_group_name = var.resource_group_name
    allocation_method   = "Static"
}
