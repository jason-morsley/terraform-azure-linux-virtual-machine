# Terraform a Virtual Machine in Azure

## Examples

For examples how to use, please refer to the examples folder.

## Azure Credentials

Set the following environment variables:
```bash
export ARM_CLIENT_ID="00000000-0000-0000-0000-000000000000"
export ARM_CLIENT_SECRET="00000000-0000-0000-0000-000000000000"
export ARM_SUBSCRIPTION_ID="00000000-0000-0000-0000-000000000000"
export ARM_TENANT_ID="00000000-0000-0000-0000-000000000000"
export ARM_LOCATION="uksouth"
```
Login to Azure CLI and test environment variables:
```bash
az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID
```

https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret

Check public IP address of your VM with:
```bash
az vm show --resource-group k3s-resource-group --name k3s-vm -d --query [publicIps] -o tsv
```
## Usage

```

```