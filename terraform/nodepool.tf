resource "ionoscloud_k8s_node_pool" "demo_pool" {
  name             = "stackable-demo-nodepool"
  k8s_cluster_id   = ionoscloud_k8s_cluster.demo.id
  datacenter_id    = ionoscloud_datacenter.demo.id
  k8s_version      = ionoscloud_k8s_cluster.demo.k8s_version
  
  node_count       = 2
  cores_count      = 4
  ram_size         = 10240   # MB = 10 GiB
  storage_size     = 200      # GB
  cpu_family       = "INTEL_SKYLAKE"
  availability_zone     = "AUTO"
  storage_type          = "SSD"

  # Optional but recommended metadata
  labels = {
    role = "demo"
    app  = "stackable"
  }

  annotations = {
    environment = "demo"
  }
}
