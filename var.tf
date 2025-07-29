variable "resource_group_name" {
  type    = string
  default = "rg-tf-homework-mz"
}

variable "resource_group_location" {
  type    = string
  default = "westeurope"
}

variable "storage_account_name" {
  type    = string
  default = "mzstorageaccount268"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "hw"
    Owner       = "MZ"
  }
}
