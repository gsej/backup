


# resource "azurerm_resource_group" "example2" {
#   name     = "example2"
#   location = "ukwest"
# }
# resource "azurerm_application_insights" "example" {
#   name                = "tf-test-appinsights"
#   location            = azurerm_resource_group.example2.location
#   resource_group_name = azurerm_resource_group.example2.name
#   application_type    = "web"
# }