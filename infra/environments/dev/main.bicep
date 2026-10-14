targetScope = 'subscription'

@description('Resource group name for Dev environment')
param resourceGroupName string

@description('Resource group location')
param location string = 'westus2'

@description('Business Unit')
param businessUnit string = 'ITDPT'

@description('Creation Date')
param creationDate string = '2026-04-02'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: location
  tags: {
    BusinessUnit: businessUnit
    CreationDate: creationDate
  }
}

output resourceGroupId string = rg.id
