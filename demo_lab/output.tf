output "ssh-command" {
  value = "ssh -i demo-keypair.pem ubuntu@${aws_instance.web.public_ip}"

}