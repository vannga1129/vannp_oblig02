resource "azurerm_mssql_server" "sqlserver" {
  name                         = var.sqlserver_name
  location                     = var.location
  resource_group_name          = var.rg_name
  version                      = "12.0"
  administrator_login          = "ngavanph"
  administrator_login_password = "oblig2@xxx"
}

resource "azurerm_mssql_database" "sqldatabase" {
  name         = var.sqldatabase_name
  server_id    = azurerm_mssql_server.sqlserver.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "P1"
  enclave_type = "VBS"
}