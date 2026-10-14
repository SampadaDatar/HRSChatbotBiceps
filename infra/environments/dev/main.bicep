targetScope = 'subscription'

param resourceGroupName string
param location string = 'westus'

module rg '../modules/resourceGroup.bicep' = {
  name: 'deploy-rg-dev'
  params: {
    name: resourceGroupName
    location: location
  }
}
