resource "ionoscloud_datacenter" "demo" {
  name                  = "datacenter-demo"
  location              = "de/txl"
  description           = "datacenter description"
  sec_auth_protection   = false
}