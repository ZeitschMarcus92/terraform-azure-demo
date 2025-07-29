# Terraform Azure – Kurzbeschreibung zur Abgabe

## Authentifizierung

Ich habe die **empfohlene Methode** verwendet:  
**Azure CLI Login** über den Befehl `az login`.  
Dadurch konnte Terraform automatisch auf meine Azure Subscription zugreifen, ohne dass Service Principal oder Keyfile nötig waren.

---

## Probleme & Lösungen

- **Ungültiger Storage Account Name:**  
  Ursprünglich war der Name zu kurz und enthielt Großbuchstaben. Ich habe ihn korrigiert, indem ich `random_integer` verwendet habe:
  ```hcl
  name = "${var.storage_account_name}${random_integer.rand.result}"


## LOG Auszug terraform apply & destroy

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.

Destroy complete! Resources: 4 destroyed.

