## Infrastructure Provisioning with Terraform Modules

This project contains Terraform configuration files for managing infrastructure resources using modules.

### Table of Contents

Project Structure
Description
Prerequisites
Usage
Variables
Providers
Resources
State
Contributing
License
### Project Structure

Copy code
├── modules
│   └── my_module
├── readme.md
├── resources
│   ├── ec2_linux.tf
│   ├── ec2_windows.tf
│   ├── linux_sg.tf
│   ├── providers.tf
│   └── windows_sg.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── variables
    ├── linux.tfvars
    ├── terraform.tfvars
    ├── variables.tf
    └── windows.tfvars
### Description

This project contains Terraform configuration files for managing infrastructure resources using modules. It provides infrastructure-as-code templates to provision and manage EC2 instances and security groups for both Linux and Windows environments.

### Prerequisites
 
Before using these Terraform configurations, ensure that you have the following:

Terraform installed (version X.X.X or later)
AWS CLI configured with appropriate credentials and permissions
### Usage

Clone the repository:

```
git clone <repository_url>
```
Change into the project directory:

```
cd <project_directory>
```

Update the necessary variables in the variables.tfvars file based on your requirements.
Initialize Terraform:

```
terraform init
```

Review the execution plan:

```
terraform plan -var-file=terraform.tfvars
```

Apply the Terraform configuration to provision the infrastructure:

```
terraform apply -var-file=terraform.tfvars
```

When you're finished, you can destroy the infrastructure:

```
terraform destroy -var-file=terraform.tfvars
```

### Variables

The variables.tf file defines the variables used by the Terraform configuration. The variables directory contains different .tfvars files for Linux and Windows configurations, allowing you to specify environment-specific variable values.

Please refer to the variables.tf file for a list of available variables and their descriptions.

### Providers

The providers.tf file specifies the provider configurations used in the Terraform project. It defines the necessary provider blocks and their respective configurations.

### Resources

The resources directory contains the Terraform configuration files for defining the infrastructure resources. It includes:

ec2_linux.tf: Terraform configuration for provisioning Linux EC2 instances.
ec2_windows.tf: Terraform configuration for provisioning Windows EC2 instances.
linux_sg.tf: Terraform configuration for defining security groups for Linux instances.
windows_sg.tf: Terraform configuration for defining security groups for Windows instances.
Please review and modify these files according to your infrastructure requirements.

### State

The terraform.tfstate and terraform.tfstate.backup files are used to store the state of the infrastructure managed by Terraform. Do not modify or delete these files manually.

### Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please feel free to open a pull request or submit an issue in the project repository.

License

This project is licensed under the MIT License.