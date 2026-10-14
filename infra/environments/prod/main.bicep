targetScope = 'subscription'

param resourceGroupName string
param location string = 'centralus'

module rg '../modules/resourceGroup.bicep' = {
  name: 'deploy-rg-prod'
  params: {
    name: resourceGroupName
    location: location
  }
}
