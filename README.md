# Terraform Azure Storage Beispiel

Dieses Projekt zeigt die Nutzung von Terraform zur Bereitstellung folgender Ressourcen in Microsoft Azure:

- Ressourcengruppe
- Storage Account mit eindeutiger Benennung
- Blob Container



# Struktur

| Datei             | Inhalt                                          |
|-------------------|-------------------------------------------------|
| `provider.tf`     | Azure Provider Definition                      |
| `variables.tf`    | Eingabevariablen (z. B. Name, Ort, Tags)       |
| `locals.tf`       | Lokale Referenzen auf Variablen                |
| `main.tf`         | Hauptressourcen: RG, Storage, Container        |
| `outputs.tf`      | Ausgabe z. B. des Blob-Endpunkts               |
| `.gitignore`      | Schließt Terraform-State-Dateien aus dem Git aus |

---

# Voraussetzungen

- Azure CLI installiert und eingeloggt: `az login`
- Terraform installiert: [https://www.terraform.io/downloads.html](https://www.terraform.io/downloads.html)

---

## Verwendung

### 1. Initialisieren

```bash
terraform init
