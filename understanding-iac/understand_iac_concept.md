# Exam objectives

| 1  | **Understand infrastructure as code (IaC) concepts** |
|----|------------------------------------------------------|
| 1a | Explain what IaC is                                  |
| 1b | Describe advantages of IaC patterns                  |

# What is IaC and Why does it matter?

Infrastructure as Code (IaC) refers to the practice of managing and provisioning computing infrastructure (such as servers, networks, databases, etc.) using machine-readable script files rather than physical hardware configuration or interactive configuration tools. In essence, it means defining and managing infrastructure using code, typically in a declarative or imperative programming language.

IaC enables automation in infrastructure management, allowing teams to:

### 1. Version Control
Infrastructure configurations are stored in version-controlled repositories (such as Git), facilitating easy tracking, rollback, and collaboration among teams.

### 2. Reproducibility
Infrastructure setups can be reproduced consistently across various environments (development, staging, production) by running the same code, reducing discrepancies and errors.

### 3. Scalability
It provides the ability to scale infrastructure resources up or down based on demand by altering the code, making it easier to manage growing or changing requirements.

### 4. Reduced Human Error 
Automating the deployment and management of infrastructure reduces the chances of human error associated with manual setups.


# Advantages of IaC patterns

### 1. Consistency
IaC ensures that infrastructure configurations remain consistent across different environments and deployments, reducing configuration drift and ensuring reliability.

### 2. Efficiency: 
Automation through IaC streamlines the deployment and management of infrastructure, saving time and effort compared to manual configurations.

### 3. Scalability and Flexibility: 
IaC allows easy scaling of infrastructure resources up or down based on the needs of an application or service, providing flexibility in resource allocation.

### 4. Collaboration and Reusability: 
Infrastructure code written for one project can often be reused or adapted for other projects, fostering collaboration and speeding up development cycles.

### 5. Versioning and Traceability
IaC files are version-controlled, enabling teams to track changes, revert to previous versions if necessary, and maintain a clear history of modifications.

### 6. Disaster Recovery and Testing
With IaC, disaster recovery becomes more manageable as infrastructure setups can be quickly replicated. Additionally, it facilitates easier testing of different infrastructure configurations.

Understanding these concepts is crucial when dealing with Terraform or any other Infrastructure as Code tool, as they form the foundation of automating and managing infrastructure efficiently.


### Deploying Infrastructure with Terraform

- Scope - Identify the infrastructure for your project.
- Author - Write the configuration for your infrastructure.
- Initialize - Install the plugins Terraform needs to manage the infrastructure.
- Plan - Preview the changes Terraform will make to match your configuration.
- Apply - Make the planned changes.