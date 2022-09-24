# Criar um recurso Null e provisionadores
resource "null_resource" "name" {
  depends_on = [module.ec2_public]
  # Bloco de conexão para que os provisionadores se conectem à instância do EC2
  connection {
    type        = "ssh"
    host        = aws_eip.bastion_eip.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = file("private-key/terraform-key.pem")
  }

  ## File Provisioner: Copia o arquivo terraform-key.pem para /tmp/terraform-key.pem
  provisioner "file" {
    source      = "private-key/terraform-key.pem"
    destination = "/tmp/terraform-key.pem"
  }
  ## Remote Exec Provisioner: Usando o provisionador de execução remota, corrija as permissões de chave privada no Bastion Host
  provisioner "remote-exec" {
    inline = [
      "sudo chmod 400 /tmp/terraform-key.pem"
    ]
  }
  ## Local Exec Provisioner: local-exec provisioner (Provisionador de Tempo de Criação - Acionado durante a Criação de Recurso)
  provisioner "local-exec" {
    command     = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
    working_dir = "local-exec-output/"
    #on_failure = continue
  }
}