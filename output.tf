output "instance_details" {
  value = {
    public_ip     = module.ec2_instance.public_ip
    ssh_command   = "ssh -i ${var.private_key} ubuntu@${module.ec2_instance.public_ip}"
    ansible_setup = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu -i '${module.ec2_instance.public_ip},' --private-key ${var.private_key} -e 'pub_key=${var.public_key}' playbooks/setup-webserver.yml"
  }
}

output "web_servers" {
  value = {
    nginx   = "http://${module.ec2_instance.public_ip}"
    apache2 = "http://${module.ec2_instance.public_ip}:3000"
  }
}
