targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the the environment which is used to generate a short unique hash used in all resources.')
param environmentName string // what if I give a default value here? e.g. carefulhedgehog

@minLength(1)
@description('Primary location for all resources')
param location string // what if I give a default value here? e.g. eastus2

@description('Id of the user or app to assign application roles')
param principalId string = ''

// any other tags that I want to allow via parameters?
var tags = { 'azd-env-name': environmentName }
// todo: allow overrides of skus; I will be presciptive of names though...

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${environmentName}'
  location: location
  tags: tags
}

module swa './modules/swa.bicep' = {
  name: 'swa'
  scope: rg
  params: {
    name: 'swa-${environmentName}'
    location: location
    tags: tags
  }
}
// todo: swa
// todo: ai multiservice
// todo: managed identity for function app & user

// output swaEndpoint string = swa.outputs.swaEndpoint
// output id string = swa.outputs.id
// output rgName string = rg.name
// output rgLocation string = rg.location
