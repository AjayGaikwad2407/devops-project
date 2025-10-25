# DevOps Project

This repository contains Terraform code for provisioning and managing cloud infrastructure. The project is modularized to ensure reusability and maintainability.

## Project Structure

```
infra/
├── backend.tf          # Backend configuration for Terraform state
├── main.tf             # Main entry point for Terraform resources
├── output.tf           # Outputs for Terraform resources
├── providers.tf        # Provider configurations
├── variables.tf        # Input variables for the project
├── modules/            # Reusable Terraform modules
│   ├── acr/            # Azure Container Registry module
│   ├── aks/            # Azure Kubernetes Service module
│   ├── keyvault/       # Azure Key Vault module
│   ├── log_analytics/  # Log Analytics module
│   └── network/        # Networking module
```

## Modules

### 1. Azure Container Registry (ACR)
- Manages Azure Container Registry resources.

### 2. Azure Kubernetes Service (AKS)
- Provisions and manages AKS clusters.

### 3. Azure Key Vault
- Manages Azure Key Vault for secure storage of secrets.

### 4. Log Analytics
- Configures Log Analytics workspace for monitoring.

### 5. Network
- Sets up virtual networks, subnets, and NSG rules.

## Usage

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the `infra` directory:
   ```bash
   cd infra
   ```

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Plan the infrastructure changes:
   ```bash
   terraform plan
   ```

5. Apply the changes:
   ```bash
   terraform apply
   ```

## Prerequisites

- Terraform installed on your local machine.
- Azure CLI installed and authenticated.
- Proper IAM roles assigned for resource provisioning.

## Inputs

The project uses input variables defined in `variables.tf`. Update the `terraform.tfvars` file to provide values for these variables.

## Outputs

The outputs of the infrastructure are defined in `output.tf` and include details such as resource IDs, endpoints, and connection strings.



