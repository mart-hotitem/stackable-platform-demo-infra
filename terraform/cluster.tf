resource "ionoscloud_k8s_cluster" "demo" {
  name        = "stackable-demo-cluster"
  k8s_version = "1.34.2"
  public      = true

  maintenance_window {
    day_of_the_week = "Sunday"
    time            = "03:00:00Z"
  }
}