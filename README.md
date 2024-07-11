[![Build Bicep Modules](https://github.com/Latzox/crc-deploy/actions/workflows/build-bicep-modules.yml/badge.svg)](https://github.com/Latzox/crc-deploy/actions/workflows/build-bicep-modules.yml)

# Cloud Resume Challenge - Deployment

This repository contains the infrastructure as code (IaC) for deploying the Cloud Resume Challenge components using Azure Bicep.

## Project Overview

The Cloud Resume Challenge is a hands-on project to demonstrate your skills in cloud computing. For more details, visit the [Cloud Resume Challenge](https://cloudresumechallenge.dev/docs/the-challenge/azure/).

This project is divided into three repositories:
- [crc-frontend](https://github.com/latzox/crc-frontend): Contains the frontend code.
- [crc-backend](https://github.com/latzox/crc-backend): Contains the backend code.
- [crc-deploy](https://github.com/latzox/crc-deploy): Contains the infrastructure as code.

## Structure

- `cosmosdb.bicep`: Deployment script for Cosmos DB.
- `frontdoor.bicep`: Deployment script for Azure Front Door.
- `function.bicep`: Deployment script for the Azure Function.
- `main.bicep`: Main deployment script.
- `staticwebapp.bicep`: Deployment script for the Static Web App.

## Setup

1. **Clone the repository:**

    ```bash
    git clone https://github.com/yourusername/crc-deploy.git
    cd crc-deploy
    ```

2. **Install Azure CLI and Bicep CLI:**

    Follow the [official documentation](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/install) to install Azure CLI and Bicep CLI.

## Deployment

1. **Login to Azure:**

    ```
    az login
    ```

2. **Deploy the main Bicep template:**

    ```
    az deployment group create --resource-group <ResourceGroupName> --template-file main.bicep --parameters resName=crc-prod-001
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
