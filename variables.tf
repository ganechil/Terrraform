variable "env" {
  type    = string
  default = "prod"
}

variable "dbwscope" {
  type    = string
  default = "azkvdbwscope"
}

variable "stgaccname" {
  type    = string
  default = "stacdata"
}

variable "default_location" {
  default = "East US 2"
  type    = string
}

# Change the default value for a unique name
variable "company" {
  default = "company"
  type    = string
}


variable "secretsname" {
  type = map(any)
  default = {
    "databricksappsecret"   = "databricksappsecret" //App Registered with Azure AD for Databricks Authentication
    "databricksappclientid" = "databricksappclientid"     //Client ID of the Azure AD Application
    "tenantid"              = "tenantid"     //Tenant ID of the Azure AD
  }
}