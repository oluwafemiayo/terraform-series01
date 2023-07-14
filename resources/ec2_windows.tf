resource "aws_instance" "ec2_windows" {
    ami                      = var.ec2_windows_ami_id
    instance_type            = var.ec2_instance_type
    key_name                 = "machala"
    count                    = var.ec2_instance_count
    vpc_security_group_ids   = [aws_security_group.allow_rdp.id, aws_security_group.allow_tls.id]

    tags = {
        Name  = "Windows-Server"
        key = "devops"
    }
}
