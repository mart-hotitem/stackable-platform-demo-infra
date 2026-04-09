output "cluster_name" {
  value = ionoscloud_k8s_cluster.demo.name
}

output "cluster_id" {
  value = ionoscloud_k8s_cluster.demo.id
}

output "datacenter_name" {
  value = ionoscloud_datacenter.demo.name
}

output "datacenter_id" {
  value = ionoscloud_datacenter.demo.id
}