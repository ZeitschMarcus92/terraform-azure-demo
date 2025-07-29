resource "random_integer" "rand" {
  min = 1000
  max = 9999
}

resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = local.rg_location

  tags = var.tags
}

resource "azurerm_storage_account" "sa" {
  # Der Name muss global eindeutig, 3–24 Zeichen lang und nur Kleinbuchstaben/Zahlen enthalten
  name                     = "${var.storage_account_name}${random_integer.rand.result}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags       = var.tags
  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_storage_container" "container" {
  name                  = "tfcontainer"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"

  depends_on = [azurerm_storage_account.sa]
}
