## Description
This project helps to deploy a simple Python application that returns the timestamp and user IP address upon hitting a URL. The infrastructure is provisioned and managed using Terraform.

## Prerequisites
- Terraform installed (version X.X.X or higher)
- AWS credentials configured
- Any necessary provider plugins

## Usage
1. Clone this repository
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Review execution plan:
   ```bash
   terraform plan
   ```
4. Apply changes:
   ```bash
   terraform apply
   ```

## Project Structure
```
.
├── main.tf          # Main configuration
├── variables.tf     # Input variables
├── outputs.tf       # Output definitions
└── README.md        # This file
```
