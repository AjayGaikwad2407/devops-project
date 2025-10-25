output "aks_id" {
  description = "The ID of the AKS Cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}