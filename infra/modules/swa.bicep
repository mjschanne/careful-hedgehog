param name string
param location string = resourceGroup().location
param tags object = {} // { tagName1: 'tagValue1' tagName2: 'tagValue2' }
param repositoryUrl string
param branch string = 'main'
@allowed([ 'Free', 'Standard' ])
param sku string = 'Standard'

resource swa 'Microsoft.Web/staticSites@2022-09-01' = {
  name: name
  location: location
  tags: tags
  sku: {
    name: sku
    size: sku
  }
  identity: {
    type: 'SystemAssigned'
  }
  // kind: 'string' ??

  properties: {
    allowConfigFileUpdates: true
    branch: branch
    repositoryUrl: repositoryUrl
    buildProperties: {
      apiBuildCommand: 'dotnet build'
      apiLocation: 'src/Api'
      //appArtifactLocation: 'src.'
      appBuildCommand: 'dotnet build'
      appLocation: 'src/Client'
      //githubActionSecretNameOverride: 'string'
      //outputLocation: 'string'
      //skipGithubActionWorkflowGeneration: bool
    }
    // enterpriseGradeCdnStatus: 'string'
    // provider: 'string'
    // publicNetworkAccess: 'string'
    // repositoryToken: 'string'
    
    // stagingEnvironmentPolicy: 'string'
    // templateProperties: {
    //   description: 'string'
    //   isPrivate: bool
    //   owner: 'string'
    //   repositoryName: 'string'
    //   templateRepositoryUrl: 'string'
    // }
  }
}

// todo: confirm api works; consider appsettings adds for both front end and backend; other configs?

output swaEndpoint string = swa.properties.defaultHostname
output id string = swa.id
