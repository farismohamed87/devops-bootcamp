output "rackula_url" {
  value = "http://${module.my_rackula_server.public_ip}:8080"
}

output "server_public_ip" {
  value = module.my_rackula_server.public_ip
}

output "ssm_command" {
  value = "aws ssm start-session --target ${module.my_rackula_server.id}"
}
