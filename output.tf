# public ip of my vm
output "my-ec2-publicIp" {
    value = aws_instance.example.public_ip
  
}

# ec2 machin instance id
output "my-ec2ID" {
  value=aws_instance.example.id
}

resource "local_file" "Nikhil-data" {
  content  = aws_instance.example.public_ip
  filename = "${path.module}/myipo.bar"
  #making manual dependency
  depends_on = [ aws_instance.example ]
}