resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  location                 = var.location
  resource_group_name      = var.rg_name
  account_tier             = "Standard"
  account_replication_type = "GRS"
  min_tls_version          = "TLS1_2"  # Add this line to enforce a secure TLS version
}

resource "azurerm_storage_container" "sc" {
  name                  = var.sc_name
  storage_account_id  = azurerm_storage_account.sa.id
  container_access_type = "private"
}

resource "azurerm_storage_blob" "sb" {
  name                   = var.sb_name
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sc.name
  type                   = "Block"
  content_type           = "text/html"
}

