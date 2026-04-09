resource "ionoscloud_k8s_node_pool" "demo_pool" {
  name              = "demo-nodepool"
  k8s_cluster_id    = ionoscloud_k8s_cluster.demo.id

  node_count        = var.nodepool_enabled ? 2 : 0

  cores             = 4
  ram               = 10240   # 10 GB
  storage_size      = 50       # GB
  cpu_family        = "INTEL_SKYLAKE"

  auto_scaling {
    min_node_count = var.nodepool_enabled ? 2 : 0
    max_node_count = 2
  }
}