# Aptible starter pack: monolithic application

To use this starter pack:

1. Edit example.tfvars to match the configuration of your application
2. Initialize the Terraform working directory: `terraform init`
3. Plan the changes before applying: `terraform plan -var-file="example.tfvars"`
4. If there are no errors, apply the changes to provision resources: `terraform apply -var-file="example.tfvars"`
