 locals {
   storage_account_name = "gsejstorageaccount1"
   storage_account_container = "test1"
 }

 resource "azurerm_storage_account" "storage-account" {
   name                = local.storage_account_name
   resource_group_name = azurerm_resource_group.group.name
   location = azurerm_resource_group.group.location
   account_tier = "Standard"
   account_replication_type = "LRS"
}


resource "azurerm_storage_container" "container" {
  name                  = local.storage_account_container
  storage_account_name  = azurerm_storage_account.storage-account.name
  container_access_type = "private"
}