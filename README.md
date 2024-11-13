# vannp_oblig02 - IaC with Terraform and CI/CD Pipeline

### Introduction
The main focus of this assignmnet setting up an Azure infrastructure using Terraform and implementing a CI/CD pipeline with GitHub Actions. 

The infrastructure components include:
- **Virtual Network**: with proper subnets.
- **Azure App Service Plan**: for hosting the web application.
- **Azure SQL Database**: for data storage.
- **Azure Blob Storage**: for product images.
- **Azure Load Balancer**: in front of the web application.

For infrastructure configuration it should be created branches (remember good naming convention and life cycle) that should undergo code reviews (terraform fmt, terraform validate and tflint/tfsec) before they are merged into the environment branches (e.g., dev, staging, prod), which providing a layer of quality assurance.

### Folder Structure
```plaintext
vannp_oblig02/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
├── report.pdf
├── modules/
│   ├── app_service/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── database/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── load_balancer/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── networking/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── storage/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── .github/
    └── workflows/
        ├── deploy.yml
        └── devstageprodapp.yml
        ├── tflint.yml
        └── tfsec.yml
        ├── validate.yml
```


### Setup Instructions

   a. **Create a Service Principal:**
   ```
   az login
   az ad sp create-for-rbac --name "terraform-sp" --role="Contributor" --scopes="/subscriptions/YOUR_SUBSCRIPTION_ID"
   ```
   Replace YOUR_SUBCRIPTION_ID with the Azure subscription ID. <br>
   b. **Set Environment Variables:**(store in GitHub Secrets or paste it vs code cli terraminal for authentication)
   ```
   export ARM_CLIENT_ID="APP_ID"
   export ARM_CLIENT_SECRET="PASSWORD"
   export ARM_SUBSCRIPTION_ID="SUBSCRIPTION_ID"
   export ARM_TENANT_ID="TENANT_ID"
   ```
1. **Prepare Terraform Variables** <br>
   a. Edit **terraform.tfvars** with the desired configuration.
2. **Deploy the Infrastructure** <br>
   a. **Using GitHub Actions CI/CD Pipeline**
   The deployment is automated using GitHub Actions workflows.<br>
   - **Branch Strategy:** <br>
     - Create feature branches for development. <br>
     - Validate code using **validate.yml** on push to any branch except **main**. <br>
     - Create a **Pull Request** to merge into environment branches **(dev, staging, prod)**.<br>
  - **CI/CD Workflows:** <br>
    - **validate.yml**: Validates Terraform code using **terraform fmt, terraform validate**, and can be extended to include **ftflint and tfsec**, but in my case I install **tfsec**
    - ```
      brew install tfsec
      ```
      and use **tfsec** locally to enhance the security of my Terraform infrastructure as code (IaC) by identifying potential security vulnerabilities and misconfigurations in my Terraform files. <br>
    - **devstageprodapp.yml**: On merging into environment branches, triggers deployment to the respective environment's workspace. Deploy to **prod** requires manual approval.<br>

    b. **Manually Applying Terraform (Alternative)**
      ```
      # Select or create workspace
      terraform workspace select dev || terraform workspace new dev
      
      terraform init
      
      # Plan the deployment
      terraform plan -out=main.tfplan
      
      # Apply the deployment
      terraform apply "main.tfplan"
      ```
3. **Access the Deployed Application**
   Retrieve the App Service URL:
   ```
   terraform output app_service_hostname
   ```
   Test the Applicaation:
   ```
   curl $(terraform output -raw app_service_hostname)
   ```
4. **Cleanup Resources**
   To avoid unnecessary cost, destroy the resources when they are no longer needed:
   ```
   terraform destroy
   ```


