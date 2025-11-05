resource "tls_private_key" "example" {
  algorithm = var.privet-key-algo
  rsa_bits = var.key-size
}

#save my private key
resource "local_file" "private-key-data" {
  content = tls_private_key.example.private_key_pem
  filename = "${path.module}/nikhilKey.pem"
  file_permission = 0400
}

#sending
resource "aws_key_pair" "example" {
  public_key = tls_private_key.example.public_key_openssh
  key_name = "nikhil-privatekey"
  
}

