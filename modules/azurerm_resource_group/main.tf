resource "azurerm_resource_group" "this" {
    for_each = var.rg-var
    name     = each.value.rg-name
    location = each.value.location
}