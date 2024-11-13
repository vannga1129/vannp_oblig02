resource "azurerm_service_plan" "sp" {
  name                = var.sp_name
  location            = var.location
  resource_group_name = var.rg_name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.sp.id

  site_config {}
  #optional
  app_settings = var.app_settings              # Optional: Application settings
  #optional
  https_only = true                            # Enforce HTTPS
}