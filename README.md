# AWS Lambda IP & Timestamp API

A simple serverless API built with AWS Lambda + API Gateway that returns the timestamp and public IP address of the client making the request.
Infrastructure is managed via Terraform and deployed with a single command.

---

## Tech Stack

- AWS Lambda (Python)
- API Gateway (HTTP API)
- Terraform
- AWS IAM
- Optional: GitHub Actions for CI/CD

## What This API Does

When you hit the API endpoint:

```bash
curl https://<your-api>.execute-api.<region>.amazonaws.com/<stage>/

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
5. After successful deployment, access the application at the API Gateway URL:
   ```bash
   terraform output api_gateway_url
   ```

## Project Structure
```
.
├── main.tf          # Main configuration
├── variables.tf     # Input variables
├── outputs.tf       # Output definitions
└── README.md        # This file
```
