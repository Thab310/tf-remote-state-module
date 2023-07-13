# Terraform remote state resources

## 1. What is this?
This repository provides Terraform configuration files for managing remote state resources in AWS. Remote state allows Terraform to store its state data in a shared and centralized location, which can be accessed by multiple users or across different Terraform configurations. Storing the state remotely helps in collaboration, state locking, and enables storing sensitive information securely.

This repository includes configuration for creating an S3 bucket and a DynamoDB table in AWS to store and manage the Terraform state.

## 2. Getting started
1. Clone the repo via SSH or HTTPS  
   ```bash
   #SSH
   git clone git@github.com:Thab310/tf-remote-state-module.git

   #HTTPS
   git clone https://github.com/Thab310/tf-remote-state-module.git
   ```
2. CD into `tf-remote-state` and create `terraform.tfvars`    
   ```bash
   cd tf-remote-state-module && touch terraform.tfvars
   ```   
3. Update `terraform.tfvars`
   ```hcl
   profile = ""
   region  = ""
   owner   = ""
   ```
4. Run `terraform init` and `terraform apply`

## 3. Note
It is advisable to create the s3 bucket for storing the tfstate file and dynamodb for locking in one module but the actual backend configuration should be done in a separate module so as to reference the s3 bucket and and dynamodb that have been created by this module.
