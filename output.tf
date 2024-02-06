output "server_id" {
  value       = hcloud_server.node.id
  description = "Id of the created server."
}

output "name" {
  value       = hcloud_server.node.name
  description = "Name of the created server."
}

output "public_ipv4" {
  value       = hcloud_server.node.ipv4_address
  description = "Public ipv4 of the created server."
}

output "public_ipv6" {
  value       = hcloud_server.node.ipv6_address
  description = "Public ipv6 of the created server."
}

output "private_ip" {
  value       = var.subnet_id == "" ? null : hcloud_server_network.node_network[0].ip
  description = "Private ip of the server if a subnet id was given."
}
