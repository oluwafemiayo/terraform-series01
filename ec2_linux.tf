resource "aws_instance" "ec2_linux" {
    ami                      = var.ec2_linux_ami_id
    instance_type            = var.ec2_instance_type
    key_name                 = "machala"
    count                    = var.ec2_instance_count
    vpc_security_group_ids   = [aws_security_group.allow_ssh.id, aws_security_group.allow_tls.id]
    subnet_id                = var.remote_subnet_id
    tags = {
        Name  = "Linux-Server"
        key   = "devops"
    }
}

