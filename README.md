# Project

I'm learning building an AZD based static web app with all the nice trimmings of GitHub Actions, VS Code launch/tasks, and the SWA CLI. It will be a light HLS Open AI application. Here are my (_dreamy_) todos:
- lock down github repository to not allow direct pushes to main branch only allow PR to main branch
- azd support
- github actions
- ado support?
- dev containers?
- swa with function app behind (fluent blazor)
- swa cli support
- apim between api and front end?
- ai multieservice
- ai search
- storage account for documents to indedx
- indexer function app (separate from api)
- apim with a couple of apis? to prove out semantic kernel ideas
- pdf > chunk with doc intelligence > any figures without captions that we can use captions for generate a description using OCR > index
- ui has chat interface with citations and thumbs up/thumbs down
- ui has plain search against ai search with paging
- agent interface prove out of use case
    - termination idea of judiciary triumverate
    - selection criteria idea of prioritizing list of plugin based on kind of plugin
- plugin ideas
    - tone
    - garammar
    - pov
    - brevity
    - audience
    - persuasive
    - humor
    - language complexity
    - fact check
- chat with planner and smart card presentation
- .NET Aspire when support for Azure functions comes out
- add playwright tests
- add semantic tests

## Current Questions
- Is the default for the Azure Developer CLI to host app on ACA if you didn't use a template?
- How can I use AZD CLI without a template?
- Is AZURE_CREDENTIALS the recommended way to use federated credentials with GitHub?
- How can I get an instance of Azure DevOps to play around with?
- 


## Getting Started

### Recommended Software
- Azure CLI
- Azure Developer CLI
- Azure Function Core Tools
- 

### AZD


### Working with GitHub

1. Create a [federated credential for Azure](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Clinux) and add to your GitHub repository secrets
    - run the following in the Azure CLI (if you used the environment name carefulhedgehog in the azure developer CLI then you'll have a resource group called rg-carefulhedgehog)
    ```
    az ad sp create-for-rbac --name careful-hedgehob --role Contributor --scopes /subscriptions/<subscription-id>/resourceGroups/<resource-group>

    ```


### Azue DevOps

todo: