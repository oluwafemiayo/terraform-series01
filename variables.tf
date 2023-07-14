#Input variables
variable "aws_region" {
  description = "Ec2 Resource Region"
  type        = string
  default     = "us-east-2"

}

variable "ec2_linux_ami_id" {
  description = "Linux AMI ID"
  type        = string
  default     = "ami-069d73f3235b535bd" #Amazon Linux 2023 AMI

}

variable "ec2_windows_ami_id" {
  description = "Windows AMI ID"
  type        = string
  default     = "ami-0d2f97c8735a48a15"  #Microsoft Windows Server 2022 Base

}

variable "ec2_instance_type" {
  description = "Ec2 Instance Type"
  type        = string
  default     = "t2.medium"

}

variable "ec2_instance_count" {
  description = "Ec2 Instance Count"
  type        = number
  default     = 2

}


variable "remote_vpc_id" {
  description = "Remote VPC ID" #Fetched from within already created VPC
  type        = string
  default     = "vpc-0fd2cbd656f3e8d5a"

}

variable "remote_subnet_id" {
  description = "Remote Subnet ID" #Fetched from within already created VPC
  type        = string
  default     = "subnet-0d1bdc43245e7369e"

}
